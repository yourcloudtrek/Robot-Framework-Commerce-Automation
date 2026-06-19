*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/locators.py


*** Keywords ***
   
CLick Register link
    Wait Until Element Is Visible       ${register_link}    10s
    Click Element    ${register_link}
    

Enter Newsletter Email and validate
    Wait Until Element Is Visible    ${newsletter_email}    10s
    Input Text    ${newsletter_email}    ram@123.com    
    Click Element    ${newsletter_subscribe_button}
    Wait Until Element Is Visible    ${newsletter_confirm_message}
    Element Should Contain    ${newsletter_confirm_message}    A verification email has been sent

Validate Poll section
    Wait Until Element Is Visible    ${poll_good}     timeout=10s
    Click Element    ${poll_good}
    Click Element    ${vote_button}
    Wait Until Element Is Visible    ${vote_message_non_reg_user}
    Element Should Contain    ${vote_message_non_reg_user}    Only registered users can vote.

Validate Search item functionality
    Wait Until Element Is Visible    ${search_filed}
    Input Text    ${search_filed}    handbag
    Wait Until Element Is Visible    ${search_item}
    Click Element    ${search_item}
    Wait Until Element Is Visible    ${search_result}
    Element Should Contain    ${search_result}    Handbag    ignore_case=True
    Sleep    4s

Books link from category section
    Wait Until Element Is Visible     ${books_link}
    Click Element    ${books_link}

Computer tab on header section
    Wait Until Element Is Visible    ${computers_header_menu}    timeout=10s
    Mouse Over    ${computers_header_menu}
    Sleep    1s
    Click Element   ${desktop_sub_menu}

Computer tab on header section_notebook
    Wait Until Element Is Visible    ${computers_header_menu}    timeout=10s
    Mouse Over    ${computers_header_menu}
    Sleep    1s
    Click Element    ${notebook_sub_menu}

GiftCard tab on header section
    Wait Until Element Is Visible    ${gift_cards}
    Click Element    ${gift_cards}

Click Digital Downloads tab
    Wait Until Element Is Visible    ${digital_downloads}
    Click Element    ${digital_downloads}
    
    

    
    
    

             
    



