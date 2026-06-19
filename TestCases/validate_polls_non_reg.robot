*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/homepage_objects.robot
Resource    ../Utilities/common_keywords.robot

*** Test Cases ***
3 Validate Polls for non reg users
    Launch browser and launch application
    Validate Poll section
    Close the browsering session