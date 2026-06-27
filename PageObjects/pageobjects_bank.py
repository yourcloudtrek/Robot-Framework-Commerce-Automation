# Page objects of home page
register_link = "xpath://a[text()='Register']"


# Page objects of Reg page
para_first_name = "xpath://input[@id='customer.firstName']"
para_last_name = "xpath://input[@id='customer.lastName']"
para_address = "xpath://input[@id='customer.address.street']"
para_city = "xpath://input[@id='customer.address.city']"
para_state = "xpath://input[@id='customer.address.state']"
para_zip_code = "xpath://input[@id='customer.address.zipCode']"
para_phone_number = "xpath://input[@id='customer.phoneNumber']"
para_ssn = "xpath://input[@id='customer.ssn']"
para_username_email = "xpath://input[@id='customer.username']"
para_password = "xpath://input[@id='customer.password']"
para_confirm_password = "xpath://input[@id='repeatedPassword']"
para_register_button = "xpath://input[@value='Register']"
para_register_confirmation = "xpath://p[text()='Your account was created successfully. You are now logged in.']"

# Page objects of User home page
para_left_nav_link_create_new_account = "xpath://a[text()='Open New Account']"
para_left_nav_link_transfer_funds = "xpath://a[text()='Transfer Funds']"


# Page objects of open new account page
para_open_new_acount_text = "xpath://a[text()='Open New Account']"
para_account_type_dropdown = "xpath://select[@id='type']"
para_min_amount_deposit_dropdown = "xpath://select[@id='fromAccountId']"
para_open_new_account_button = "xpath://input[@value='Open New Account']"
para_account_opened_confirmation = "xpath://h1[text()='Account Opened!']"
para_account_new_account_id = "xpath://a[@id='newAccountId']"
para_account_number_text = "xpath=//td[@id='accountId']"

#Page objects of Transfer funds
para_transfer_funds_banner_text = "xpath://h1[contains(text(), 'Transfer Funds')]"
para_amount_field = "xpath://input[@id='amount']"
para_from_acc_dropdown = "xpath://select[@id='fromAccountId']"
para_to_acc_dropdonw = "xpath://select[@id='toAccountId']"
para_transfer_button = "xpath://input[@value='Transfer']"
para_transfer_complete_confirmation = "xpath://div[@id='transferApp']"



