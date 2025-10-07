*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url}                  https://testautomationpractice.blogspot.com/
${browser}              headlesschrome

*** Test Cases ***
Headless Browser
    Open Browser To Landing Page    ${url}    ${browser}
    ${title}    Get Title
    Title Should Be    Automation Testing Practice
    Log To Console    ${title}