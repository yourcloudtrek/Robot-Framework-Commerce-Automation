*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/homepage_objects.robot
Resource    ../../Resources/registrationpage_objects.robot
Resource     ../../Resources/books_category_page_objects.robot
Resource     ../../Utilities/common_keywords.robot 
Resource    ../../Resources/shopping_cart_page_objects.robot
Resource    ../../Resources/checkout_page_objects.robot


*** Test Cases ***
1_Place Books Order
    [Documentation]    This test case is to place all books order
    Launch browser and launch application
    CLick Register link
    Register the use sucessfully and validate
    Books link from category section
    Add all books item to the cart
    Select Country, State / Province and Postalcode and checkout
    Enter shipping and billing details and confirm order
    


    




