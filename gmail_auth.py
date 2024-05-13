from google.oauth2.credentials import Credentials
from google.auth.transport.requests import Request
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
import base64
import json

CLIENT_SECRET_FILE = 'client_secrm.json'
SCOPES = ['https://www.googleapis.com/auth/gmail.readonly']

def authenticate():
    creds = None
    try:
        creds = Credentials.from_authorized_user_file('token.json', SCOPES)
    except Exception as e:
        print("Exception:", e)
    
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                CLIENT_SECRET_FILE, SCOPES)
            creds = flow.run_local_server(port=0)
        with open('token.json', 'w') as token:
            token.write(creds.to_json())
    return creds

def fetch_otp_from_email():
    creds = authenticate()
    service = build('gmail', 'v1', credentials=creds)

    results = service.users().messages().list(userId='me', labelIds=['INBOX']).execute()
    messages = results.get('messages', [])
    
    otp = None  # Initialize OTP variable

    if messages:
        message_id = messages[0]['id']
        msg = service.users().messages().get(userId='me', id=message_id).execute()
        payload = msg['payload']
        headers = payload['headers']
        for header in headers:

            if header['name'] == 'Subject':
                subject_line = header['value']
                parts = subject_line.split(':')
                otp = parts[-1].strip()  # Extract OTP from subject line
                print(otp)
        body = payload['body']
        if 'data' in body:
            data = body['data']
            print('Body:', base64.urlsafe_b64decode(data).decode('utf-8'))
    return otp  
