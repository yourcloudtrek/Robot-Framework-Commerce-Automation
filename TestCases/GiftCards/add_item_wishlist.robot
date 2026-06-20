*** Settings ***    
Library    SeleniumLibrary
Resource    ../Utilities/common_keywords.robot
Resource    ../Resources/homepage_objects.robot
Resource    ../Resources/apperals_shoes_page_objects.robot
Resource    ../Resources/wishlist_cart_page_objects.robot


*** Test Cases ***    
11_Validate wishlist
    Launch browser and launch application
    Add apperals and other items to wishlist
    Validate Wishlist title
    Close the browsering session