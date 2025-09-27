*** Settings ***
Library    Utilities.get_chrome_driver.BrowserDriver

*** Test Cases ***
Open Chrome Browser
    ${driver}=    Chrome Driver
    Log    Browser opened successfully
    Close Chrome Driver



