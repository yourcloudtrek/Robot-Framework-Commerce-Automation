*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py
Resource    ../Utilities/common_keywords.robot


*** Keywords ***    
Add all books item to the cart
    ${add_to_cart} =    Get WebElements    ${books_add_to_cart}
    FOR    ${item}    IN    @{add_to_cart}
        Click Element    ${item}
        Sleep    1s
        
    END
    Wait Until Element Is Visible    ${shopping_cart_link}
    Click Element    ${shopping_cart_link}
    Sleep    5s

Add Specific Books to cart based on category
    ${BOOK_NAME} =    List of Books
    Log To Console    ${BOOK_NAME}
    Click Element    xpath://a[contains(text(),'${BOOK_NAME}')]/ancestor::div[@class='product-item']//input[@value='Add to cart']
    Sleep    10s


    
    