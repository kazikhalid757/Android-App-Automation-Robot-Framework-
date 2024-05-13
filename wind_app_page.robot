*** Settings ***
Library         AppiumLibrary
Library         BuiltIn
Library         gmail_auth.py
Resource        ../wind_app.robot

*** Variables ***
${welcome_page}                     id=avalon.wind.app:id/tvSlidTitle
${email_button}                     id=avalon.wind.app:id/emailBTN
${email_field}                      id=avalon.wind.app:id/emailET
${continue_button}                  id=avalon.wind.app:id/continueBTN
${otp_field}                        id=avalon.wind.app:id/verificationCodePV 
${Choose_Pin}                       id=avalon.wind.app:id/choosePinPV
${Re_Enter_Pin}                     id=avalon.wind.app:id/reEnterPinPV
${username_field}                   id=avalon.wind.app:id/pickUserNameET
${full_name_field}                  id=avalon.wind.app:id/fullNameET
${skip_button}                      id=avalon.wind.app:id/tvEdtTitle
${profile_picture_icon}                    id=avalon.wind.app:id/ivProPic
${understood_BTN}                   id=avalon.wind.app:id/understoodBTN
${profile_button}                   id=avalon.wind.app:id/ivLIcon
${edit_button}                      id=avalon.wind.app:id/tvEdtTitle
${edit_name_field}                  id=avalon.wind.app:id/etRcvrFName
${save_button}                      id=avalon.wind.app:id/llBtnSave
${successfully_mess}                id=avalon.wind.app:id/tvAlertMsg
${Ok_Icon}                          id=avalon.wind.app:id/ivOkIc
${close_button}                     id=avalon.wind.app:id/ivToolbarClose
${Net_Worth_Currency_button}             id=avalon.wind.app:id/ivNetWCurrency
${taka_currency_select}                  xpath=//android.widget.LinearLayout[4]/android.widget.RelativeLayout/android.widget.ImageView[2]
${back_button}                           id=avalon.wind.app:id/ivToolbarBack
${green_mark}                            id=avalon.wind.app:id/ivRIcon
${phone_button}                          id=avalon.wind.app:id/phoneBTN
${down_arrow}                            id=avalon.wind.app:id/downIV
${select_country_code}                   xpath=//androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[3]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TextView
${phone_number_field}                    id=avalon.wind.app:id/phoneNumberET
${Security_and_PIN_section}                  id=avalon.wind.app:id/ivRIcon2
${reset_pin_option}                          xpath=//android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.RelativeLayout
${firstPinView}                              id=avalon.wind.app:id/firstPinView
${reset_pin_new}                             id=avalon.wind.app:id/pvEnterNewPin
${reset_pin_confirm}                         id=avalon.wind.app:id/pvConfirmPin
${confirm_change_button}                     id=avalon.wind.app:id/llBtnCont
${successfull_pin_reset}                     id=avalon.wind.app:id/tapToLoginTV
${theme_section}                     id=avalon.wind.app:id/ivArwTheme
${system_theme}                      id=avalon.wind.app:id/tvTitle
${logout_button}                     id=avalon.wind.app:id/ivRIcon8
${Saved_Recipients_section}                  id=avalon.wind.app:id/ivRIcon4
${Add_New_Recipient_button}                  id=avalon.wind.app:id/llBtnNewRcpnt
${select_country}                            xpath=//android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout
${select_method}                             xpath=//android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout
${e_wallet_arrow}                            id=avalon.wind.app:id/ivBtnShowBankName
${select-e_wallet}                           xpath=//android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.ImageView[2]
${wallet_number}                             id=avalon.wind.app:id/etWalletAcNo
${R_full_name}                               id=avalon.wind.app:id/etRcvrFName
${R_email}                                   id=avalon.wind.app:id/etRcvrEmail
${Recipient_Details_page}                    id=avalon.wind.app:id/tvToolbarTitle
${export_private_option}                     xpath=//android.widget.LinearLayout/android.widget.FrameLayout[2]/android.widget.RelativeLayout/android.widget.RelativeLayout
${tap_for_private_key}                       id=avalon.wind.app:id/tvPrivateKey
${export_private_button}                     xpath=//android.widget.LinearLayout/android.widget.FrameLayout[3]/android.widget.RelativeLayout
${android_copy_button}                       id=android:id/chooser_copy_button
${Transaction_History_section}               id=avalon.wind.app:id/ivRIcon3
${T_all_button}                              id=avalon.wind.app:id/llCategoryBalck
${T_add_button}                              xpath=(//android.widget.RelativeLayout/android.widget.LinearLayout)[2]
${T_cash_out_button}                         xpath=(//android.widget.RelativeLayout/android.widget.LinearLayout)[3]
${T_earn_button}                             xpath=(//android.widget.RelativeLayout/android.widget.LinearLayout)[4]
${T_send_button}                             xpath=(//android.widget.RelativeLayout/android.widget.LinearLayout)[5]
${No_transaction_history}                    id=avalon.wind.app:id/tvNoData
# ${}                  id=
# ${}                  id=
# ${}                  id=
# ${}                  id=

###############################################  User Variable  ##################################################################################

${GMAIL_EMAIL}                                 test.email.a454@gmail.com
${pin}                                          5522
${Update_pin}                                   5521
${name}                                         Test_B
${update_name}                                  Test_b                              
${username}                                     Test_username_3
${otp}                ${EMPTY}
${wallet_account_number}                               09292912021
${full_name}                                     Test_full_name


*** Keywords ***

#TC1

Check that Welcome page should Appear
    Sleep       3s
    Run Keyword And Ignore Error            Wait Until Element Is Visible           ${welcome_page} 
Click Continue with Email button
    Wait Until Element Is Visible           ${email_button}
    Click Element    ${email_button}
Enter Email Address
    Wait Until Element Is Visible           ${email_field}
    Input Text    ${email_field}    ${GMAIL_EMAIL}

Click Continue button
    Wait Until Element Is Visible           ${continue_button}
    Click Element    ${continue_button}
    
Enter Pin
  Sleep  15s
  Wait Until Element Is Visible           ${Choose_Pin}
  Input Text     ${Choose_Pin}                   ${pin}    
  Wait Until Element Is Visible           ${Re_Enter_Pin}
  Input Text    ${Re_Enter_Pin}                   ${pin}  

Enter User Name
    Sleep     2s
    Wait Until Element Is Visible           ${username_field}
    Input Text    ${username_field}                   ${username}
Enter Full Name
    Sleep     2s
    Wait Until Element Is Visible           ${full_name_field}
    Input Text    ${full_name_field}          ${name} 
Check that Home page loads properly after a successful signup
    Sleep  2s
    Wait Until Element Is Visible           ${skip_button}
    Click Element    ${skip_button}
    Sleep     6s
    Click Element    ${skip_button}
    Sleep     5s
    Wait Until Element Is Visible           ${profile_picture_icon}    


#TC_2   
Check that Home page loads properly after a successful login
    Sleep     15s
    Click Element                    ${understood_BTN}  
    Sleep     1s
    Wait Until Element Is Visible           ${profile_picture_icon}


  #TC_3

Click Export Private Key section
    Wait Until Element Is Visible           ${export_private_option}
    Click Element                           ${export_private_option}

Tap to reveal private key
    Wait Until Element Is Visible           ${tap_for_private_key}
    Click Element                           ${tap_for_private_key}
Click Export Private Key button
    Wait Until Element Is Visible           ${export_private_button}
    Click Element                           ${export_private_button}
Check that Private Key is exported properly
    Sleep     2s
    Wait Until Element Is Visible           ${android_copy_button}



  #TC_4

Click Transaction History section
    Wait Until Element Is Visible           ${Transaction_History_section}
    Click Element                           ${Transaction_History_section}
Check that All Transactions button selected
    Sleep     2s
    Wait Until Element Is Visible           ${T_all_button}
Click Add Transactions button
    Wait Until Element Is Visible           ${T_add_button}
    Click Element                           ${T_add_button}
Click Cash out Transactions button
    Wait Until Element Is Visible           ${T_cash_out_button}
    Click Element                           ${T_cash_out_button}
Click Earn Transactions button
    Wait Until Element Is Visible           ${T_earn_button}
    Click Element                           ${T_earn_button}
Click Send Transactions button
    Wait Until Element Is Visible           ${T_send_button}
    Click Element                           ${T_send_button}
Check that Transaction History is displayed properly
    Sleep     3s
    Wait Until Element Is Visible           ${No_transaction_history}


 #TC_5

Click Saved Recipent section 
    Wait Until Element Is Visible           ${Saved_Recipients_section}
    Click Element                           ${Saved_Recipients_section}
Click Add Recipient button
    Wait Until Element Is Visible           ${Add_New_Recipient_button}
    Click Element                           ${Add_New_Recipient_button}
Select a country
    Wait Until Element Is Visible           ${select_country}
    Click Element                           ${select_country}
Select a method
    Wait Until Element Is Visible           ${select_method}
    Click Element                           ${select_method}
Click Continue button for go to Recipients Details page
    Click Element                           ${confirm_change_button}
Check that Recipients Details page loads properly
    Sleep     2s
    Wait Until Element Is Visible           ${Recipient_Details_page}
Select E-Wallet type
    Wait Until Element Is Visible           ${e_wallet_arrow}
    Click Element                           ${e_wallet_arrow}
    Sleep     2s
    Wait Until Element Is Visible           ${select-e_wallet}
    Click Element                           ${select-e_wallet}
    Sleep     2s
Enter Wallet Account Number
    Sleep     2s
    Wait Until Element Is Visible           ${wallet_number}
    Input Text    ${wallet_number}                   ${wallet_account_number}  
Enter Receivers Full Name
    Sleep     2s
    Wait Until Element Is Visible           ${R_full_name}
    Input Text    ${R_full_name}                   ${full_name}
Enter Recipient Email
    Sleep     2s
    Wait Until Element Is Visible           ${R_email}
    Input Text    ${R_email}                   ${GMAIL_EMAIL}
Click Continue button for add new recipients
    Sleep     2s
    Click Element                           ${confirm_change_button}



#TC_6
Click Net Worth Currency section 
    Wait Until Element Is Visible           ${Net_Worth_Currency_button}
    Click Element                           ${Net_Worth_Currency_button}
Select a country Currency
     Sleep        2s
    Wait Until Element Is Visible           ${taka_currency_select}
    Click Element                           ${taka_currency_select}
Check that green mark select currency
    Sleep     1s
    Wait Until Element Is Visible           ${green_mark} 
    Wait Until Element Is Visible           ${back_button}
    Click Element                           ${back_button}
    Sleep     2s



#TC_7

Click theme section 
    Wait Until Element Is Visible           ${theme_section}
    Click Element                           ${theme_section}
Select system theme
    Sleep     2s
    Wait Until Element Is Visible           ${system_theme}
    Click Element                           ${system_theme}
Check that green mark select theme
    Sleep     2s
    Wait Until Element Is Visible           ${green_mark}


#TC_8

Check that Logout button show properly
     Swipe        0       1100      0       0     2000
     Wait Until Element Is Visible           ${logout_button}
Click that Logout button
    Click Element                           ${logout_button}
Check that Logout properly 
    Sleep     7s
   Run Keyword And Ignore Error         Wait Until Element Is Visible           ${successfull_pin_reset}

#TC_9

Click Profile icon button
    Wait Until Element Is Visible              ${profile_picture_icon}   
    Click Element                              ${profile_picture_icon}   
Click Profile section 
    Wait Until Element Is Visible           ${profile_button}
    Click Element                           ${profile_button}
Click edit button
    Wait Until Element Is Visible           ${edit_button}
    Click Element                          ${edit_button}
Enter Update Full Name
    Sleep     2s
    Wait Until Element Is Visible            ${edit_name_field}
    Clear Text               ${edit_name_field}
    Input Text        ${edit_name_field}              ${update_name}   
Click save button
    Sleep     2s
    Wait Until Element Is Visible           ${save_button}
    Click Element                          ${save_button}
Check that name updated properly 
    Sleep     3s
    Wait Until Element Is Visible           ${Ok_Icon} 
    Wait Until Element Is Visible           ${successfully_mess}
    Click Element                           ${close_button}
    Sleep     2s     


#TC_10

Click Security and Pin section
    Wait Until Element Is Visible           ${Security_and_PIN_section}
    Click Element                           ${Security_and_PIN_section}
Click reset pin option
    Wait Until Element Is Visible           ${reset_pin_option}
    Click Element                           ${reset_pin_option}

Enter previous pin 
    Sleep     2s
    Wait Until Element Is Visible           ${firstPinView}
    Input Text    ${firstPinView}                   ${pin}
Enter new pin
    Sleep     4s
    Wait Until Element Is Visible           ${reset_pin_new}
    Input Text       ${reset_pin_new}                    ${Update_pin}

Enter confirm pin
    Sleep     2s
    Wait Until Element Is Visible           ${reset_pin_confirm}
    Input Text       ${reset_pin_confirm}                    ${Update_pin}
Click confirm change button
    Sleep     2s
    Wait Until Element Is Visible           ${confirm_change_button}
    Click Element                           ${confirm_change_button}
Check that pin reset properly
    Sleep     25s
    Run Keyword And Ignore Error         Wait Until Element Is Visible           ${successfull_pin_reset}    