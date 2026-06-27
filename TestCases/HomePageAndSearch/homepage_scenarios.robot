*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/common_keywords.robot
Resource    ../../Resources/homepage_objects.robot

Suite Setup    Log To Console    Homepage scenarios start
Suite Teardown    Log To Console    Homepage scenarios end

Test Setup    Launch browser and launch application
Test Teardown    Close the browsering session


*** Test Cases ***
1_Validate Search functionality 
    [Tags]    sanity
    Validate Search item functionality

2_Validate Polls functionality
    Validate Poll section

3_Validate newsletter functionality
    [Tags]    regression
    Enter Newsletter Email and validate


