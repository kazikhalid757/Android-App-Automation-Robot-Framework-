*** Settings ***
Library    gmail_auth.py
Library           AppiumLibrary
Library           BuiltIn
Library           OperatingSystem
Resource         ../Environment/AppSetup.robot
Resource         ../wind_app_page.robot





*** Keywords ***
login properly
    Open app
    Check that Welcome page should Appear
    Click Continue with Email button
    Enter Email Address
    Click Continue button
    Retrieve OTP from Email
    Click Continue button
    Check that Home page loads properly after a successful login

Retrieve OTP from Email
     Sleep   10s
    ${otp} =    Fetch OTP From Email
    Log    OTP received: ${otp}
    Sleep   2s
    Input Text    ${otp_field}    ${otp}
    Sleep   2s





***Test Cases***    

#TC_1
Scenario: Verify that user signup perfectly 
    [Tags]    passed
    Open app
    Check that Welcome page should Appear
    Click Continue with Email button
    Enter Email Address
    Click Continue button
    Retrieve OTP from Email
    Click Continue button 
    Enter Pin
    Click Continue button
    Enter User Name
    Click Continue button
    Enter Full Name
    Click Continue button
    Check that Home page loads properly after a successful signup

#TC_2
Scenario: Verify that user login perfectly 
    [Tags]    passed
    Open app
    Check that Welcome page should Appear
    Click Continue with Email button
    Enter Email Address
    Click Continue button
    Retrieve OTP from Email 
    Click Continue button 
    Check that Home page loads properly after a successful login 

 # Profile Manage
  #TC_3
Scenario: Verify that Export private Key perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click Security and Pin section
    Click Export Private Key section
    Enter previous pin 
    Tap to reveal private key
    Click Export Private Key button
    Check that Private Key is exported properly


  #TC_4
Scenario: Verify that user can see all transaction history perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click Transaction History section
    Check that All Transactions button selected
    Check that Transaction History is displayed properly
    Click Add Transactions button
    Check that Transaction History is displayed properly
    Click Cash out Transactions button
    Check that Transaction History is displayed properly
    Click Earn Transactions button
    Check that Transaction History is displayed properly
    Click Send Transactions button
    Check that Transaction History is displayed properly


 #TC_5
Scenario: Verify that Add new recipent perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click Saved Recipent section 
    Click Add Recipient button
    Select a country
    Select a method
    Click Continue button for go to Recipients Details page
    Check that Recipients Details page loads properly
    Select E-Wallet type
    Enter Wallet Account Number
    Enter Receivers Full Name
    Enter Recipient Email
    Click Continue button for add new recipients

#TC_6
Scenario: Verify that change Net Worth Currency perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click Net Worth Currency section 
    Select a country Currency
    Check that green mark select currency  



#TC_7
Scenario: Verify that change Theme perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click theme section 
    Select system theme
    Check that green mark select theme

#TC_8
Scenario: Verify that logout perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Check that Logout button show properly
    Click that Logout button
    Check that Logout properly 


 # Profile Update
#TC_9
Scenario: Verify that profile update perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click Profile section 
    Click edit button
    Enter Update Full Name
    Click save button
    Check that name updated properly


#TC_10
Scenario: Verify that user can pin reset perfectly 
    [Tags]    passed
    login properly
    Click Profile icon button
    Click Security and Pin section
    Click reset pin option
    Enter previous pin 
    Enter new pin
    Enter confirm pin
    Click confirm change button
    Check that pin reset properly







