*** Settings ***
Library     SeleniumLibrary
Library     RPA.Tables
Resource    ../../Resources/OrangeHRM_Resources.robot

Suite Setup         Open Browser For Orange HRM
Suite Teardown      Close All Browsers

*** Variables ***
${CSV_FILE}       ${CURDIR}${/}..${/}..${/}Test Data${/}Login_Page.csv

*** Test Cases ***
Loop Through CSV Credentials
#    Open Workbook       ${EXCEL_FILE}
    ${table}=       Read Table From Csv     ${CSV_FILE}     header=True
    FOR    ${row}    IN    @{table}
        ${user}=    Set Variable    ${row['username']}
        ${pass}=    Set Variable    ${row['password']}
        Run Login Test With CSV Credentials     ${user}     ${pass}
    END

*** Keywords ***
Run Login Test With CSV Credentials
    [Arguments]     ${username}     ${password}
    Log To Console    Logging in with ${username} and ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click On Login Button
    Sleep   5s
    Message Should Be Visible

