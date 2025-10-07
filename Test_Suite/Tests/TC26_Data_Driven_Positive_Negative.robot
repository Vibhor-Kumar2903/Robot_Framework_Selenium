*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/OrangeHRM_Resources.robot

Suite Setup         Open Browser For Orange HRM
Suite Teardown      Close All Browsers

Test Template       Failed Login

*** Test Cases ***                  ${username}     ${password}
Valid Username Invalid Password     Admin            admin
Valid Username Valid Password       Admin            admin123


*** Keywords ***
Failed Login
    [Arguments]     ${username}     ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click On Login Button
    Sleep    3s
    Message Should Be Visible
