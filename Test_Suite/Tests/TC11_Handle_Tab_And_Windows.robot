*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://testautomationpractice.blogspot.com/
${browser}          chrome
${new_tab}          xpath=//button[text()='New Tab']
${new_tab_element}  xpath=//span[contains(text(),'Software Testing & Automation Tutorials')]

*** Test Cases ***
Handle New Tab
    Open Browser    ${url}      ${browser}
    Set Selenium Implicit Wait    5s
    Maximize Browser Window
    Wait Until Keyword Succeeds     20s     5s      Element Should Be Visible    ${new_tab}
    Click Button    ${new_tab}
    Switch Window    title=SDET-QA Blog
    Wait Until Keyword Succeeds     20s     5s      Element Should Be Visible    ${new_tab_element}
    Sleep    3s
    Close All Browsers


*** Keywords ***


*** Comments ***




