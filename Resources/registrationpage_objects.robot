*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py
Library    ../Utilities/reusables.py
Library    JSONLibrary

*** Keywords ***
Register the use sucessfully and validate

    ${json_data} =    Load Json From File    G:\\Robot Framework Commerce Automation\\Utilities\\testdata.json

    ${first_name_data}=    Set Variable    ${json_data}[registration][first_name]
    ${last_name_data}=     Set Variable    ${json_data}[registration][last_name]
    ${email_data}=         generate_email
    ${password_data}=      Set Variable    ${json_data}[registration][password]


    Wait Until Element Is Visible    ${register_banner}
    Click Element    ${gender_radio}
    Input Text    ${first_name}    ${first_name_data}
    Input Text    ${last_name}    ${last_name_data}
    Input Text    ${email}      ${email_data} 
    Input Password    ${password}   ${password_data}
    Input Password    ${confirm_password}    ${password_data}
    Click Button    ${register_button}

    Element Should Contain    ${confirmation_message}    registration completed    