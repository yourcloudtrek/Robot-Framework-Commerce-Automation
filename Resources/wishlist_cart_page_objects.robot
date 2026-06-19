*** Settings ***    
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py


*** Keywords ***
Validate Wishlist title
    Wait Until Page Contains Element    xpath://div[@class='page-title']
    Title Should Be    Demo Web Shop. Wishlist