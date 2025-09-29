*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://www.saucedemo.com/v1/
${page_title}       Swag Labs
${browser_name}     chrome
${username}     standard_user
${password}     secret_sauce


*** Test Cases ***
Test swag labs login
    Open Browser    ${url}      ${browser_name}
    Log    Browser opened successfully
    Maximize Browser Window
    ${title}=   Get Title
    Title Should Be     ${page_title}
    Should Be Equal    ${title}    ${page_title}
    Enter Values In Fields
    Sleep    5
    Close Browser


*** Keywords ***
Enter Values In Fields
    Input Text    id:user-name      standard_user
    Input Text    id:password       secret_sauce
    Click Button    id:login-button



