*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/common_keywords.robot
Resource    ../../Resources/parabank_homepage_objects.robot
Resource    ../../Resources/parabank_registerpage_objects.robot
Resource    ../../Resources/parabank_new_account_open_objects.robot


*** Test Cases ***
1_Parabank_Register user
    [Documentation]    Parabank user registers
    [Tags]    sanity
    Parabank Launch Application
    Click Register Link on homepage
    Register the user and Validate
    

2_Open a new Saving account
    [Tags]     sanity
    [Documentation]    Create a new Saving account
    Click Open New Account for Reg user from Account service Left nav pane
    Create a saving account for a user and validate
    Validate account details


    
    
