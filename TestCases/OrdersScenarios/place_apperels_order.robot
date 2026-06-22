*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/homepage_objects.robot
Resource    ../../Resources/registrationpage_objects.robot
Resource     ../../Resources/apperals_shoes_page_objects.robot
Resource     ../../Utilities/common_keywords.robot 
Resource    ../../Resources/shopping_cart_page_objects.robot
Resource    ../../Resources/checkout_page_objects.robot


*** Test Cases ***    
2_This test case is to place apperl order
    [Documentation]    This test case is to place apperals order
    Launch browser and launch application
    CLick Register link
    Register the use sucessfully and validate
    Add apperals and shoes items to cart
    Select Country, State / Province and Postalcode and checkout
    Enter shipping and billing details and confirm order



