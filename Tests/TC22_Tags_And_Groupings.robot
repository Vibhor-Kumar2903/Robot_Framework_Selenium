*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonKeyword.robot

Suite Setup         Open Browser Without Arguments
Suite Teardown      Close Browser

Test Setup          Log To Console    Login Page
Test Teardown       Log To Console    Logout Page

*** Test Cases ***
TC01
    [Tags]  Regression
    ${title}    Get Title
    Title Should Be    Automation Testing Practice
    Log To Console    ${title}

TC02
    [Tags]  Sanity
    Input Text    id=name    Vibhor
    Sleep    2s

TC03
    [Tags]  Sanity
    Input Text    id=email    vibhor.kumar@gmail.com
    Sleep    2s

TC04
    [Tags]  Smoke
    Input Text    id=phone     8920097461
    Sleep    2s

