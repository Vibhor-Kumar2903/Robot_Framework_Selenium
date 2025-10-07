*** Settings ***
Library     SeleniumLibrary
Library     ../Utilities/get_chrome_driver.py
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url_1}          https://the-internet.herokuapp.com/
${url_2}          https://testautomationpractice.blogspot.com/
${browser}      chrome


*** Test Cases ***
Handling Browser Keywords
    Open Browser To Landing Page    ${url_1}      ${browser}
    Sleep    2s
    ${location_1}     Get Location
    Log To Console    ${location_1}
    Sleep    2s
    Go To    ${url_2}
    ${location_2}     Get Location
    Log To Console    ${location_2}
    Sleep    2s
    Go Back
    ${location_3}     Get Location
    Log To Console    ${location_3}
    Sleep    2s
    Close Browser

*** Keywords ***


*** Comments ***