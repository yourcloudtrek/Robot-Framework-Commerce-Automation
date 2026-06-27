*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/pageobjects_bank.py

*** Keywords ***
Transfer Funds
    Wait Until Element Is Visible    ${para_left_nav_link_transfer_funds}
    Click Element    ${para_left_nav_link_transfer_funds}
    Wait Until Element Is Visible    ${para_transfer_funds_banner_text}    timeout=10s
    Wait Until Element Contains    ${para_transfer_funds_banner_text}    Transfer Funds
    Input Text    ${para_amount_field}    250
    Select From List By Index   ${para_from_acc_dropdown}     0
    Select From List By Index    ${para_to_acc_dropdonw}    0
    Click Element    ${para_transfer_button}
    Wait Until Element Is Visible    ${para_transfer_complete_confirmation}    timeout=10s
    Wait Until Element Contains    ${para_transfer_complete_confirmation}    has been transferred from account


