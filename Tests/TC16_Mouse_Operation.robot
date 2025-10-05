*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/CommonKeyword.robot

*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}      chrome
${hover_point}  xpath=//button[text()='Point Me']
${double_click_point}   xpath=//button[text()='Copy Text']
${drag_item}        id=draggable
${drop_target}      id=droppable



*** Test Cases ***
Mouse_Hovering
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    Mouse Over    ${hover_point}
    ${opt_1}    Get Text    link=Mobiles
    Log To Console    Hover option 1 : ${opt_1}
    ${opt_2}    Get Text    link=Laptops
    Log To Console    Hover option 2 : ${opt_2}
    Sleep    2s

    Double Click Element    ${double_click_point}
    ${field_text}       Get Text    id=field2
    Log To Console    ${field_text}
    Sleep    2s

    Drag And Drop    ${drag_item}    ${drop_target}
    Sleep    2s

    Open Context Menu    id=slider-range
    Sleep    2s
    Close Browser

