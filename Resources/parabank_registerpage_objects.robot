*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Variables    ../PageObjects/pageobjects_bank.py
Resource    ../Utilities/common_keywords.robot
Library    ../Utilities/reusables.py

*** Keywords ***
Register the user and Validate

    ${parabank_data} =    Load Json From File    Utilities/testdata_bank.json

    ${user_fn} =    Set Variable    ${parabank_data}[register_cust][cust_first_name]
    ${user_ln} =     Set Variable    ${parabank_data}[register_cust][cust_last_name]
    ${user_address} =     Set Variable    ${parabank_data}[register_cust][cust_address]
    ${user_city} =     Set Variable    ${parabank_data}[register_cust][cust_city]
    ${user_state} =     Set Variable    ${parabank_data}[register_cust][cust_state]
    ${user_zip} =     Set Variable    ${parabank_data}[register_cust][cust_zip]
    ${user_phone} =     Set Variable    ${parabank_data}[register_cust][cust_phone]
    ${user_ssn} =     Set Variable    ${parabank_data}[register_cust][cust_ssn]

    ${user_name_email} =    generate_email
    ${user_password} =     Set Variable    ${parabank_data}[register_cust][cust_password]

    
    Sleep    3s
    Input Text    ${para_first_name}    ${user_fn}
    Input Text    ${para_last_name}     ${user_ln}
    Input Text    ${para_address}    ${user_address}
    Input Text    ${para_city}    ${user_city}
    Input Text    ${para_state}    ${user_state}
    Input Text    ${para_zip_code}    ${user_zip} 
    Input Text    ${para_phone_number}    ${user_phone}
    Input Text    ${para_ssn}    ${user_ssn}
    Input Text    ${para_username_email}    ${user_name_email}
    Input Text    ${para_password}    ${user_password}
    Input Text    ${para_confirm_password}     ${user_password}
    Click Element    ${para_register_button}
    Wait Until Element Is Visible     ${para_register_confirmation}
    Element Should Contain    ${para_register_confirmation}    Your account was created successfully
