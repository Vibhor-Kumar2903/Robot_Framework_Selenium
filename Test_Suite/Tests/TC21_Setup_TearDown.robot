*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/CommonKeyword.robot

Suite Setup         Log To Console    Opening Browser
Suite Teardown      Log To Console    Closing Browser

Test Setup          Log To Console    Login Page
Test Teardown       Log To Console    Logout Page


*** Variables ***
${url}              https://testautomationpractice.blogspot.com/
${browser}          chrome

*** Test Cases ***
TC01
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    ${title}    Get Title
    Title Should Be    Automation Testing Practice

TC02
    Input Text    id=name    Vibhor
    Sleep    2s

TC03
    Input Text    id=email    vibhor.kumar@gmail.com
    Sleep    2s

TC04
    Input Text    id=phone     8920097461
    Sleep    2s

