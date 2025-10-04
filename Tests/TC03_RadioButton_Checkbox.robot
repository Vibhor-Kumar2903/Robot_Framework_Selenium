*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Handling Radio Button
    Open Browser    ${url}      chrome
    Maximize Browser Window
    Element Should Be Visible    id:male
    Sleep    2
    Select Radio Button    gender    male
    Sleep    2
    Close Browser


Handling CheckBox
    Open Browser    ${url}      chrome
    Maximize Browser Window
    Element Should Be Visible    id:sunday
    Element Should Be Visible    id:monday
    Element Should Be Visible    id:tuesday
    Element Should Be Visible    id:wednesday
    Element Should Be Visible    id:thursday
    Element Should Be Visible    id:friday
    Element Should Be Visible    id:saturday
    Sleep    3
    Select Checkbox    id:monday
    Select Checkbox    id:wednesday
    Sleep    3
    Unselect Checkbox    id:monday
    Unselect Checkbox    id:wednesday
    Sleep    2
    Close Browser


*** Keywords ***






