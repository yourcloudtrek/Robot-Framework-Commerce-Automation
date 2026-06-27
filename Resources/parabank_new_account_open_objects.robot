*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/pageobjects_bank.py
Library    OperatingSystem

*** Variables ***
${MY_ACCOUNT_NUMBER}    ${EMPTY}

*** Keywords ***
Create a saving account for a user and validate
    Wait Until Element Is Visible    ${para_open_new_acount_text}
    Element Should Contain    ${para_open_new_acount_text}    Open New Account
    Select From List By Label    ${para_account_type_dropdown}    SAVINGS
    Sleep    2s
    Select From List By Index    ${para_min_amount_deposit_dropdown}    0
    Click Element    ${para_open_new_account_button}
    
    Wait Until Element Is Visible    ${para_account_opened_confirmation}
    Element Should Contain    ${para_account_opened_confirmation}    Account Opened

    ${account_number}=    Get Text    ${para_account_new_account_id}
    Log To Console    ${account_number}
    Set Global Variable    ${MY_ACCOUNT_NUMBER}    ${account_number}    
    Log To Console    The Suite Variable is ${MY_ACCOUNT_NUMBER}

    Click Element    ${para_account_new_account_id}

Validate account details
    Wait Until Element Is Visible    ${para_account_number_text}
    Wait Until Element Contains    ${para_account_number_text}    ${MY_ACCOUNT_NUMBER}
       
    



    
    




   

