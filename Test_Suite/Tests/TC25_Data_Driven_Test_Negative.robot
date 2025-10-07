*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/OrangeHRM_Resources.robot

Suite Setup         Open Browser For Orange HRM
Suite Teardown      Close All Browsers

Test Template       Failed Login

*** Test Cases ***                  ${username}     ${password}
Valid Username Invalid Password     Admin           admin
Invalid Username Valid Password     Admi            admin123
Empty Usename Valid Password        ${EMPTY}        admin123
Valid Usename Empty Password        Admin           ${EMPTY}


*** Keywords ***
Failed Login
    [Arguments]     ${username}     ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click On Login Button
    Validate Error Message