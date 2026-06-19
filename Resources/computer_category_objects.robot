*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Add desktop item to the cart
    Wait Until Element Is Visible    ${desktop_banner}
    Click Element    ${add_cart_computer}
    Wait Until Element Is Visible    ${product_name_desktop}
    Click Element    ${add_cart_computer}
    Wait Until Element Is Visible    ${shopping_cart_link}
    Click Element    ${shopping_cart_link}
    Sleep    5s

Add Notebook item to cart
    Wait Until Element Is Visible    ${notebook_banner}    timeout=10s
    Click Element    ${add_cart_computer}
    Wait Until Element Is Visible    ${shopping_cart_link}
    Click Element    ${shopping_cart_link}
    Sleep    5s


        
