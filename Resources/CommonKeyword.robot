*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_1}              https://testautomationpractice.blogspot.com/
${browser_1}          chrome

*** Keywords ***
Open Browser To Landing Page
    [Arguments]     ${url}      ${Browser}
    Open Browser    ${url}      ${Browser}
    Maximize Browser Window
    Sleep    3s

Open Browser Without Arguments
    Open Browser    ${url_1}      ${Browser_1}
    Maximize Browser Window
    Sleep    3s



