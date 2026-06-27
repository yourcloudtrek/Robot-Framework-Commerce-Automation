*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections
Variables    ../PageObjects/locators.py
Library    OperatingSystem

*** Variables ***

${test_data_file_path}     ${CURDIR}/testdata.json
${test_data_file_path_parabank}     ${CURDIR}/testdata_bank.json


    

*** Keywords ***
Launch browser and launch application
    
    ${lambda_test_details} =    Load Json From File    ${test_data_file_path}

    ${lt_username} =     Get Environment Variable    LT_USERNAME
    ${lt_accesskey} =    Get Environment Variable    LT_ACCESSKEY

    # ${lt_username} =    Set Variable    ${lambda_test_details}[lambda_test][user_name_lt]
    # ${lt_accesskey} =    Set Variable    ${lambda_test_details}[lambda_test][access_key_lt]
    
    
    ${remote_rul} =  Set Variable     https://${lt_username}:${lt_accesskey}@hub.lambdatest.com/wd/hub

    ${data} =    Load Json From File   ${test_data_file_path}
    ${url} =    Set Variable        ${data}[url]   

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver

    ${lt_options} =     Create Dictionary     
    ...    build=commerce_orders_scenario
    ...    name=commerce-project

    Call Method    ${options}    set_capability    LT:Options    ${lt_options}               


    Open Browser   ${url}    Chrome    remote_url=${remote_rul}    options=${options}

    #Open Browser    ${url}    browser=Chrome

    Delete All Cookies    
    Maximize Browser Window

Parabank Launch Application
    ${lambda_test_details} =    Load Json From File    ${test_data_file_path}
    ${bank_data} =    Load Json From File    ${test_data_file_path_parabank}

    # ${lt_username} =    Set Variable    ${lambda_test_details}[lambda_test][user_name_lt]
    # ${lt_accesskey} =    Set Variable    ${lambda_test_details}[lambda_test][access_key_lt]

    ${lt_username} =     Get Environment Variable    LT_USERNAME
    ${lt_accesskey} =    Get Environment Variable    LT_ACCESSKEY

    ${bank_app_url} =    Set Variable    ${bank_data}[app_url]

    ${remote_rul} =  Set Variable     https://${lt_username}:${lt_accesskey}@hub.lambdatest.com/wd/hub

    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${lt_options} =     Create Dictionary     
    ...    build=parabank-banking
    ...    name=parabank-transactions-payment

    Call Method    ${options}    set_capability    LT:Options    ${lt_options} 

    Open Browser   ${bank_app_url}    Chrome    remote_url=${remote_rul}    options=${options}

    
    #Open Browser    ${bank_app_url}    Chrome
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





