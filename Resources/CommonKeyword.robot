*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${url}      ${Browser}
    Maximize Browser Window


