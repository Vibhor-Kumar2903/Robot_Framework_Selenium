*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://ecommerce-playground.lambdatest.io/
${browser}      chrome

*** Test Cases ***
Implement Explicit Wait
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//a[@role='button']//span[contains(text(),'My account')]     5s
    Mouse Over     xpath=//a[@role='button']//span[contains(text(),'My account')]
    Click Element    xpath=//span[contains(text(),' Login')]        5s
    Wait Until Element Is Visible    xpath=//input[@value="Login"]      5s
    Sleep    2s
    Close Browser

*** Keywords ***



