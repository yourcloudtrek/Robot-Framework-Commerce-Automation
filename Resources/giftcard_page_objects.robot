*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py
Library    JSONLibrary


*** Keywords ***
Add Giftcard to the cart
    ${test_data} =     Load Json From File    Utilities/testdata.json
    ${rec_name} =     Set Variable    ${test_data}[giftcard][recipient_name]
    ${rec_email} =     Set Variable    ${test_data}[giftcard][recipient_mail]
    ${sender_n} =    Set Variable    ${test_data}[giftcard][sender_name]
    ${sender_mail} =     Set Variable    ${test_data}[giftcard][sender_email]

    Wait Until Element Is Visible    ${add_cart_giftcard}
    Click Element    ${add_cart_giftcard}

    Wait Until Element Is Visible    ${recipient_name_gc}
    Input Text    ${recipient_name_gc}    ${rec_name}
    Input Text    ${recipient_email_gc}    ${rec_email}
    Input Text    ${sender_name_gc}    ${sender_n}
    Input Text    ${sender_email_gc}    ${sender_mail}

    Click Element    ${add_cart_giftcard}
    Wait Until Element Is Visible    ${shopping_cart_link}
    Click Element    ${shopping_cart_link}

