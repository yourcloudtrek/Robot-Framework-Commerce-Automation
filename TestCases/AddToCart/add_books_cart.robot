*** Settings ***
Library    SeleniumLibrary
Resource    ../Utilities/common_keywords.robot
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/books_category_page_objects.robot

*** Test Cases ***
6_Add Books items to cart and vaidate
    Launch browser and launch application
    Books link from category section
    Add all books item to the cart
    Remove all items from the shopping cart
    Close the browsering session

