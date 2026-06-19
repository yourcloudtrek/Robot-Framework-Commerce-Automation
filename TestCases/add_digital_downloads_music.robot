*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/digital_downloads_page_objects.robot
Resource    ../Utilities/common_keywords.robot

*** Test Cases ***
10_Add digital dwonloads music to cart
    Launch browser and launch application
    Click Digital Downloads tab
    Add Digital downloads Music to cart
    Remove all items from the shopping cart
    Close the browsering session
    