*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Variables    ../PageObjects/locators.py

*** Keywords ***
Launch browser and launch application
    ${data} =    Load Json From File   G:\\Robot Framework Commerce Automation\\Utilities\\testdata.json
    ${url} =    Set Variable        ${data}[url]
    Open Browser   ${url}    Chrome
    Delete All Cookies    
    Maximize Browser Window

Close the browsering session
    Close All Browsers

Remove all items from the shopping cart
    Wait Until Element Is Visible    ${shopping_cart_banner}
        
    @{checkboxes}=    Get WebElements    ${checkboxes_cart}

    FOR    ${checkbox}    IN    @{checkboxes}
    Click Element    ${checkbox}
    END

    Click Button    ${update_cart_button}

List of Books
    @{books_category} =    Create List    Fiction    Computing and Internet    Health Book
    ${single_book} =     Evaluate    random.choice($books_category)    modules=random
    RETURN    ${single_book}


