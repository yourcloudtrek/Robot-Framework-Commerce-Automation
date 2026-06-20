*** Settings ***
Library    SeleniumLibrary
Resource    ../Utilities/common_keywords.robot
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/computer_category_objects.robot


*** Test Cases ***
7_Add notebook computer items to the cart
    Launch browser and launch application
    Computer tab on header section_notebook
    Add Notebook item to cart
    Remove all items from the shopping cart
    Close the browsering session
