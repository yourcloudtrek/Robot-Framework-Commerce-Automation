*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/homepage_objects.robot
Resource    ../../Resources/apperals_shoes_page_objects.robot
Resource    ../../Utilities/common_keywords.robot

*** Test Cases ***
8_Add Apperals and Shoes to the cart
    Launch browser and launch application
    Add apperals and shoes items to cart
    Remove all items from the shopping cart
    Close the browsering session