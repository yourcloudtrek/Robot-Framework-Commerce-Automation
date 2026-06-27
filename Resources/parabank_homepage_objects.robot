*** Settings ***
Library   SeleniumLibrary
Library    JSONLibrary
Variables    ../PageObjects/pageobjects_bank.py


*** Keywords ***
Click Register Link on homepage
    Wait Until Element Is Visible    ${register_link}
    Click Element    ${register_link}

Click Open New Account for Reg user from Account service Left nav pane
    Wait Until Element Is Visible    ${para_left_nav_link_create_new_account}
    Click Element    ${para_left_nav_link_create_new_account}
    

