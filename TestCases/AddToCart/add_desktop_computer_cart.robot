*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/homepage_objects.robot
Resource    ../../Resources/computer_category_objects.robot
Resource    ../../Utilities/common_keywords.robot

*** Test Cases ***
5_Add desktop computer to the cart
    Launch browser and launch application
    Computer tab on header section
    Add desktop item to the cart
    Remove all items from the shopping cart
    Close the browsering session



   
