# page elements of home page
register_link = "xpath://a[text()='Register']"
newsletter_email = "id:newsletter-email"
newsletter_subscribe_button = "id:newsletter-subscribe-button"
newsletter_confirm_message = "id:newsletter-result-block"
poll_good = "id:pollanswers-3"
vote_button = "id:vote-poll-1"
vote_message_non_reg_user = "id:block-poll-vote-error-1"
search_filed = "id:small-searchterms"
search_item = "xpath=//ul[@id='ui-id-1']"
search_button = "xpath://input[@value='Search']"
search_result = "xpath://strong[@class='current-item']"
books_link = "xpath:(//a[contains(text(),'Books')])[3]"
computers_header_menu = "xpath:(//a[contains(text(),'Computers')])[1]"
desktop_sub_menu = "xpath:(//a[contains(text(),'Desktops')])[1]"
notebook_sub_menu = "xpath:(//a[contains(text(),'Notebooks')])[1]"
apperal_shoes = "xpath:(//a[contains(text(),'Apparel & Shoes')])[1]"
gift_cards = "(//a[contains(text(),'Gift Cards')])[1]"
digital_downloads = "(//a[contains(text(),'Digital downloads')])[1]"




# page objects of registration page
register_banner = "xpath://h1[text()='Register']"
gender_radio = "xpath://input[@id='gender-male']"
first_name = "id:FirstName"
last_name = "id:LastName"
email = "id:Email"
password = "id:Password"
confirm_password = "id:ConfirmPassword"
register_button = "id:register-button"
confirmation_message = "xpath://div[@class='page-body']"

# page objects of Books page
books_add_to_cart = "xpath://input[@value='Add to cart']"
specific_book_cart = "xpath://a[contains(text(),'${BOOK_NAME}')]/ancestor::div[@class='product-item']//input[@value='Add to cart']"

# page objects of computers page
add_cart_computer = "xpath:(//input[@value='Add to cart'])[1]"
desktop_banner = "xpath://div[@class='page-title']"
product_name_desktop = "xpath://div[@class='product-name']"
notebook_banner = "xpath://div[@class='page-title']"

# page objects of apperals and shoes page
add_cart_apperal_shoes = "xpath:(//input[@value='Add to cart'])[1]"

# page objects of digital downloads
add_cart_music_digitaldownloads = "xpath:(//input[@value='Add to cart'])[2]"

# header links
shopping_cart_link = "xpath://a[text()='shopping cart']"

# page objects of shopping cart
shopping_cart_banner = "xpath://h1[text()='Shopping cart']"
shopping_cart_table = "xpath://table[@class='cart']//tr"
checkboxes_cart = "xpath://input[@type='checkbox']"
update_cart_button = "xpath://input[@name='updatecart']"


# page objects of gift card
add_cart_giftcard = "xpath:(//input[@value='Add to cart'])[1]"
recipient_name_gc = "xpath://input[@id='giftcard_1_RecipientName']"
recipient_email_gc = "xpath://input[@id='giftcard_1_RecipientEmail']"
sender_name_gc = "xpath://input[@id='giftcard_1_SenderName']"
sender_email_gc = "xpath://input[@id='giftcard_1_SenderEmail']"




