*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/registrationpage_objects.robot
Resource    ../Utilities/common_keywords.robot


*** Test Cases ***
1_Register a new user
    Launch browser and launch application
    CLick Register link
    Register the use sucessfully and validate
    Close the browsering session
    