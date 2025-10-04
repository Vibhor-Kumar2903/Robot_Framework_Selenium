*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Test Cases ***
Open Browser In Incognito Mode
    ${options}=      Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument   --incognito
    Create Webdriver    Chrome      options=${options}
    Maximize Browser Window
    Go To    ${url}
    Sleep    2
    Select Radio Button    gender    female
    Sleep    2
    Close Browser

#    Open Browser    ${url}      ${browser}



*** Keywords ***



