*** Settings ***
Library    SeleniumLibrary
Resource    ../../Utilities/common_keywords.robot
Resource    ../../Resources/homepage_objects.robot
Resource    ../../Resources/registrationpage_objects.robot
Resource    ../../Resources/shopping_cart_page_objects.robot
Resource    ../../Resources/checkout_page_objects.robot
Resource    ../../Resources/computer_category_objects.robot

*** Test Cases ***
3_This test case is to place computer desktop order
    [Documentation]    To validate - place comp order
    Launch browser and launch application
    CLick Register link
    Register the use sucessfully and validate
    Computer tab on header section
    Add desktop item to the cart
    Select Country, State / Province and Postalcode and checkout
    Enter shipping and billing details and confirm order


