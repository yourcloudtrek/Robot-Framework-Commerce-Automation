*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Add apperals and shoes items to cart
    Wait Until Element Is Visible    ${apperal_shoes}
    Click Element    ${apperal_shoes}
    Wait Until Element Is Visible    ${add_cart_apperal_shoes}
    Click Element    ${add_cart_apperal_shoes}
    Sleep    3s
    Click Element    ${add_cart_apperal_shoes}
    Wait Until Element Is Visible    ${shopping_cart_link}
    Click Element    ${shopping_cart_link}