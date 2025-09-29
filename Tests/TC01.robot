*** Settings ***
Library    SeleniumLibrary
#Library    Utilities.get_chrome_driver.BrowserDriver
#Library    Utilities.page_verification.PageValidation

*** Variables ***
${url}              https://automationexercise.com/
${page_title}       Automation Exercise


*** Test Cases ***
Open Automation Excercise page
    Open Browser    ${url}      chrome
    Log    Browser opened successfully
    ${title}=    Get Title
    Should Be Equal    ${title}    ${page_title}
    Log    Title validated successfully!
    Close Browser




