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

Add apperals and other items to wishlist
    Wait Until Element Is Visible    ${apperal_shoes}
    Click Element    ${apperal_shoes}
    Wait Until Element Is Visible     ${click_frok_image}
    Click Element    ${click_frok_image}
    Wait Until Element Is Visible    ${add_to_wishlist}
    Click Button    ${add_to_wishlist}
    Wait Until Element Is Visible    ${wish_list_link}
    Click Link    ${wish_list_link}


    