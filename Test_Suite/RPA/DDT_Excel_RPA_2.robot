*** Settings ***
Library     SeleniumLibrary
Library     RPA.Excel.Files
Library     RPA.Tables
Resource    ../../Resources/OrangeHRM_Resources.robot

#Suite Setup         Open Browser For Orange HRM
#Suite Teardown      Close All Browsers

Test Setup          Open Workbook       ${EXCEL_FILE}
Test Teardown       Close Workbook

*** Variables ***
${EXCEL_FILE}       ${CURDIR}${/}..${/}..${/}Test Data${/}Login_Page.xlsx
${SHEET_NAME}       Sheet1
${ROW}              2
${COLUMN}           2


*** Test Cases ***
Access Specific Excel Cell
#    Open Workbook       ${EXCEL_FILE}
    ${value}=     Get Cell Value    row=${ROW}    column=${COLUMN}    name=${SHEET_NAME}
    Log To Console    Value in row ${ROW}, column ${COLUMN} is : ${value}







