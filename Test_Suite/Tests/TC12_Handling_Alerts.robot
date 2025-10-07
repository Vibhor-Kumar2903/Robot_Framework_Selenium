*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}      chrome


*** Test Cases ***
Handling Frames
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    id=alertBtn
    Sleep    2s
    Click Element       id=alertBtn
    Sleep    2s
    ${alert_text}       Handle Alert    Accept
    Log To Console      ${alert_text}
    Sleep    2s

    Wait Until Element Is Visible    id=confirmBtn
    Sleep    2s
    Click Element       id=confirmBtn
    Sleep    2s
    ${alert_text}       Handle Alert        Dismiss
    Log To Console      ${alert_text}
    Sleep    2s

    Wait Until Element Is Visible    id=alertBtn
    Sleep    2s
    Click Element       id=alertBtn
    Sleep    2s
    ${alert_text}       Handle Alert        Leave
    Log To Console      ${alert_text}
    Sleep    4s

    Wait Until Element Is Visible    id=promptBtn
    Sleep    2s
    Click Element       id=promptBtn
    Sleep    2s
    ${alert_text}       Handle Alert    Accept
    Log To Console      ${alert_text}
    Sleep    2s
    Close Browser


*** Keywords ***


*** Comments ***




