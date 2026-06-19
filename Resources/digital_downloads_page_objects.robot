*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py


*** Keywords ***
Add Digital downloads Music to cart
    Wait Until Element Is Visible    ${add_cart_music_digitaldownloads}
    Click Element    ${add_cart_music_digitaldownloads}
    Wait Until Element Is Visible    ${shopping_cart_link}
    Click Element    ${shopping_cart_link}