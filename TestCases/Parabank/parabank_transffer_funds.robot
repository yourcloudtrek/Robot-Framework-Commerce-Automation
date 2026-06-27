*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/common_keywords.robot
Resource    ../../Resources/parabank_homepage_objects.robot
Resource    ../../Resources/parabank_registerpage_objects.robot
Resource    ../../Resources/parabank_funds_transfer.robot


*** Test Cases ***
1_Parabank_Register user
    [Documentation]    Parabank user registers
    Parabank Launch Application
    Click Register Link on homepage
    Register the user and Validate

2_Transffer Funds
    [Documentation]    User transffer funds
    Transfer Funds

    