*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://ecommerce-playground.lambdatest.io/
${browser}      chrome

*** Test Cases ***
Implement Implicit Wait
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s
    Mouse Over    xpath=//span[contains(text(),'Mega Menu')]
    Click Link    partial link=Headphones
    Close Browser





*** Keywords ***



