*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://ecommerce-playground.lambdatest.io/
${browser}      chrome

*** Test Cases ***
Implement Fluent And Timeout Wait
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Page Load Timeout    5s
    Element Should Be Visible    link= Shop by Category
    Click Link    partial link=Shop by Category
    Wait Until Keyword Succeeds    20s    4s    Element Should Be Visible    xpath=//span[contains(text(),'Phone, Tablets & Ipod')]
    Click Element    xpath=//span[contains(text(),'Phone, Tablets & Ipod')]
    Wait Until Keyword Succeeds    20s    4s    Element Should Be Visible    xpath=//h3[text()='Filter']
    Close Browser


*** Keywords ***



