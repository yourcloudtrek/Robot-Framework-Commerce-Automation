*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/homepage_objects.robot
Resource    ../Utilities/common_keywords.robot


*** Test Cases ***
2_Signuo to newsletter and validate
    Launch browser and launch application
    Enter Newsletter Email and validate
    Close the browsering session
    