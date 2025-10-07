*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Select Multiple List Value From DropDown
    Open Browser    ${url}      chrome
    Maximize Browser Window
    Select From List By Label    id:colors      Blue
    Sleep    2
    Select From List By Label    id:colors      Green
    Sleep    2
    Select From List By Label    id:colors      White
    Sleep    2
    Close Browser



*** Keywords ***




