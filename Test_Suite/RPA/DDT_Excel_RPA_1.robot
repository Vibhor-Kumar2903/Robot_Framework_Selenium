*** Settings ***
Library     SeleniumLibrary
Library     RPA.Excel.Files
Library     RPA.Tables
Resource    ../../Resources/OrangeHRM_Resources.robot

Suite Setup         Open Browser For Orange HRM
Suite Teardown      Close All Browsers

Test Setup          Open Workbook       ${EXCEL_FILE}
Test Teardown       Close Workbook

*** Variables ***
${EXCEL_FILE}       ${CURDIR}${/}..${/}..${/}Test Data${/}Login_Page.xlsx


*** Test Cases ***
Process User From Excel
    @{rows}=    Read Worksheet      header=True
    FOR    ${row}    IN    @{rows}
        Log Many    Row Data: ${row}
        ${user}=    Set Variable    ${row['username']}
        ${pass}=    Set Variable    ${row['password']}
        Run Login Flow With Credentials     ${user}     ${pass}     ${row}
    END


*** Keywords ***
Run Login Flow With Credentials
    [Arguments]     ${username}     ${password}     ${row}
    Log To Console    Logging in with ${username} and ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click On Login Button
    Sleep    3s
    Message Should Be Visible




