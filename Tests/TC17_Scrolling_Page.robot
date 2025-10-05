*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonKeyword.robot

*** Variables ***
${url}              https://testautomationpractice.blogspot.com/
${browser}          chrome
${scroll_point}     xpath=//h2[text()='Dynamic Web Table']



*** Test Cases ***
Scrolling Using JavaScript
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    Execute Javascript      window.scrollTo(0,1000)
    Sleep    2s
    Scroll Element Into View    ${scroll_point}
    Sleep    2s
    Execute Javascript      window.scrollTo(0,document.body.scrollHeight)
    Sleep    2s
    Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)
    Sleep    2s
    Close Browser


