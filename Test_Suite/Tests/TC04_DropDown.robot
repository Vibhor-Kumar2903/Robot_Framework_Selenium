*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Handle DropDown
    Open Browser    ${url}      chrome
    Maximize Browser Window
    Select From List By Value    country     india
    Sleep    2
    Select From List By Value    id:country     australia
    Sleep    2
    Select From List By Value    id:country     germany
    Sleep    2
    Select From List By Index    id:country     2
    Sleep    2
    Select From List By Index    id:country     3
    Sleep    2
    Select From List By Label    id:country     Japan
    Sleep    2
    Select From List By Label    id:country     France
    Sleep    2

*** Keywords ***