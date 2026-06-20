*** Settings ***
Library    SeleniumLibrary
Resource    ../Utilities/common_keywords.robot
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/books_category_page_objects.robot

*** Test Cases ***
6_Add Books items to cart and vaidate
    Launch browser and launch application
    Books link from category section
    Add Specific Books to cart based on category

