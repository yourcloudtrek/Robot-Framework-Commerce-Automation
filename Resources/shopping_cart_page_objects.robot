*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py


*** Keywords ***    
Remove items in cart whose amount is less then 20
    Wait Until Element Is Visible    ${shopping_cart_banner}
    ${rows} =     Get Element Count    ${shopping_cart_table}
    
    FOR    ${i}    IN RANGE    1    ${rows}
        ${price_str} =    Get Text    xpath://table[@class='cart']//tr[${i}]//td[4]
        ${final_price} =     Convert To Number    ${price_str}
        IF    ${final_price} <= 20
            Log To Console    ${final_price}
            Click Element    xpath=(//table[@class='cart']//tr[${i}]//td[1]//input[@type='checkbox'])
            Sleep    2s
            
            
        END  
    
        
    END
    Click Element    ${update_cart_button}

Select Country, State / Province and Postalcode and checkout
    Wait Until Element Is Visible    ${select_country_dropdown}    15s
    Select From List By Label    ${select_country_dropdown}    United States
    Sleep    2s
    Select From List By Index    ${select_state_dropdown}    4
    Input Text    ${postal_code}    12345
    Click Element    ${terms_conditions_chkbx}
    Click Button    ${checkout}

