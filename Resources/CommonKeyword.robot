*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_1}              https://testautomationpractice.blogspot.com/
${url_2}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser_1}          chrome
${browser_2}          headlesschrome

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


Open Browser For Orange HRM
    Open Browser    ${url_2}      ${Browser_1}
    Maximize Browser Window
    Sleep    3s


