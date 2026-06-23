*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Variables    ../PageObjects/locators.py
Library    ../Utilities/reusables.py

*** Keywords ***
Enter shipping and billing details and confirm order
    ${checkout_data} =    Load Json From File    Utilities/testdata.json

    ${user_first_name} =     Set Variable    ${checkout_data}[checkout][chk_first_name]
    ${user_last_name} =     Set Variable    ${checkout_data}[checkout][chk_last_name]
    ${user_email} =    generate_email
    ${user_city} =    Set Variable    ${checkout_data}[checkout][chk_city]
    ${user_address} =    Set Variable     ${checkout_data}[checkout][chk_address]
    ${user_zip} =     Set Variable    ${checkout_data}[checkout][chk_zip]
    ${user_phone} =    Set Variable      ${checkout_data}[checkout][chk_phone]

    Wait Until Element Is Visible    xpath=//div[@class='page-title']
    Input Text    ${first_name_checkout}    ${user_first_name}
    Input Text    ${last_name_checkout}    ${user_last_name}
    Input Text    ${email_checkout}     ${user_email}
    Select From List By Label    ${country_checkout_dropdown}    United States
    Sleep    2s
    Select From List By Index    ${state_province_checkout_dropdonw}    2
    Input Text    ${city_checkout}    ${user_city}
    Input Text    ${address1_checkout}    ${user_address}
    Input Text    ${zip_postal_checkout}    ${user_zip}
    Input Text    ${phone_checkout}    ${user_phone}
    Wait Until Element Is Visible    ${continue_button_checkout}
    Click Element    ${continue_button_checkout}
    Wait Until Element Is Visible        ${store_pickup_checkbox_checkout}
    Click Element    ${store_pickup_checkbox_checkout}
    Wait Until Element Is Visible    ${continue_shipping_checkout}
    Click Element    ${continue_shipping_checkout}
    Wait Until Element Is Visible    ${continue_payment_checkout}
    Click Element    ${continue_payment_checkout}
    Wait Until Element Is Visible    ${continue_payment_next_step_checkout}    10s
    Click Element    ${continue_payment_next_step_checkout}
    Wait Until Element Is Visible    ${confirm_order_checkout}
    Click Element    ${confirm_order_checkout}
    Wait Until Element Is Visible    ${order_confirmation_message}
    Element Should Contain    ${order_confirmation_message}    been successfully processed
    ${order_no} =    Get Text    ${order_number}
    Log To Console    The order No is ${order_no}





