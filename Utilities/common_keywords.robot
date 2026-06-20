*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections
Variables    ../PageObjects/locators.py

*** Variables ***

${test_data_file_path}     G:\\Robot Framework Commerce Automation\\Utilities\\testdata.json
    

*** Keywords ***
Launch browser and launch application
    
    ${lambda_test_details} =    Load Json From File    ${test_data_file_path}
    ${lt_username} =    Set Variable    ${lambda_test_details}[lambda_test][user_name_lt]
    ${lt_accesskey} =    Set Variable    ${lambda_test_details}[lambda_test][access_key_lt]
    ${remote_rul} =  Set Variable     https://${lt_username}:${lt_accesskey}@hub.lambdatest.com/wd/hub

    ${data} =    Load Json From File   ${test_data_file_path}
    ${url} =    Set Variable        ${data}[url]   

    # ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver

    ${lt_options} =     Create Dictionary     
    ...    build=commerce_1_FF
    ...    name=register_user

    Call Method    ${options}    set_capability    LT:Options    ${lt_options}               


    Open Browser   ${url}    Firefox    remote_url=${remote_rul}    options=${options}
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


