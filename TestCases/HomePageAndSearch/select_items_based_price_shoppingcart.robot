*** Settings ***
Library    SeleniumLibrary
Resource    ../Utilities/common_keywords.robot
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/books_category_page_objects.robot
Resource    ../Resources/shopping_cart_page_objects.robot


*** Test Cases ***
Remove the cart items based on price
    Launch browser and launch application
    Books link from category section
    Add all books item to the cart
    Remove items in cart whose amount is less then 20
    Close the browsering session
