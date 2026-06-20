*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/giftcard_page_objects.robot
Resource    ../Utilities/common_keywords.robot


*** Test Cases ***
9_Add giftcard to the cart
    Launch browser and launch application
    GiftCard tab on header section
    Add Giftcard to the cart
    Remove all items from the shopping cart
    Close the browsering session