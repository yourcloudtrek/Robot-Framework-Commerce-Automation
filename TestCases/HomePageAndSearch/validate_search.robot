*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/homepage_objects.robot
Resource    ../Utilities/common_keywords.robot

*** Test Cases ***
4_Validate item search functionality
    Launch browser and launch application
    Validate Search item functionality
    Close the browsering session