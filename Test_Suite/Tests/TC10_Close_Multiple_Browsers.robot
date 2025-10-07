*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url_1}            https://testautomationpractice.blogspot.com/
${url_2}            https://www.saucedemo.com/v1/
${browser}          chrome
${window_pop_up}    id=PopUp
${header_text}      xpath=//div[contains(text(),'Alerts, Frame & Windows')]
${browser_windows}  xpath=//span[text()='Browser Windows']


*** Test Cases ***
Close Multiple Browser
    Open Browser    ${url_1}      ${browser}
    Set Selenium Implicit Wait    5s
    Maximize Browser Window
    Wait Until Keyword Succeeds     20s     5s      Element Should Be Visible     ${window_pop_up}
    Click Element    ${window_pop_up}
    Sleep    3s
    Close All Browsers

Close Multiple Browser 2
    Open Browser    ${url_1}      ${browser}
    Maximize Browser Window
    Sleep     2s
    Open Browser    ${url_2}      ${browser}
    Maximize Browser Window
    Sleep     2s
    Close All Browsers



*** Keywords ***


*** Comments ***




