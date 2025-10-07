*** Settings ***
Library     SeleniumLibrary
Library     ../Utilities/get_chrome_driver.py
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}      chrome


*** Test Cases ***
Taking ScreenShots
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    Input Text      id=name     Vibhor
    Sleep    2s
    Capture Element Screenshot    id=name       Results/Failed_ScreenShots/element.png
    Capture Page Screenshot       Results/Failed_ScreenShots/full_page.png
    Close Browser