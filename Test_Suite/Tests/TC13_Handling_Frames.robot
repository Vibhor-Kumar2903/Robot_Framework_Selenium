*** Settings ***
Library     SeleniumLibrary
Library     ../Utilities/get_chrome_driver.py
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url}          https://the-internet.herokuapp.com/
${browser}      chrome
${iFrame_link}       link=Frames
${Single_Frame_link}       link=iFrame
${Single_frame_text_value}    xpath=//p[normalize-space()='Your content goes here.']
${Nested_Frame_link}       link=Nested Frames
${top_frame}           name=frame-top
${left_frame}          name=frame-left
${middle_frame}        name=frame-middle
${right_frame}         name=frame-right
${bottom_frame}        name=frame-bottom
${frame_text}          xpath=//body

*** Test Cases ***
Handling Single Frame
    Open Browser To Landing Page      ${url}      ${browser}
    Set Selenium Implicit Wait      10s
    Click Link    ${iFrame_link}
    Sleep    3s
    Click Link    ${Single_Frame_link}
    Select Frame    id=mce_0_ifr
    Wait Until Element Is Visible    ${Single_frame_text_value}
    ${single_frame_text}    Get Text    ${Single_frame_text_value}
    Log To Console    ${single_frame_text}
    Unselect Frame

Handling Nested Frame
    Open Browser To Landing Page      ${url}      ${browser}
    Set Selenium Implicit Wait      10s
    Click Link    ${iFrame_link}
    Sleep    3s
    Click Link    ${Nested_Frame_link}

    # 1. Switch to top frameset then left frame
    Select Frame    ${top_frame}
    Select Frame    ${left_frame}
    ${left_text}=    Get Text    ${frame_text}
    Log To Console   Left frame text: ${left_text}
    Unselect Frame

    # 2. Middle frame under the top frameset
    Select Frame    ${top_frame}
    Select Frame    ${middle_frame}
    ${middle_text}=    Get Text    ${frame_text}
    Log To Console     Middle frame text: ${middle_text}
    Unselect Frame

    # 3. Right frame under top
    Select Frame    ${top_frame}
    Select Frame    ${right_frame}
    ${right_text}=    Get Text    ${frame_text}
    Log To Console    Right frame text: ${right_text}
    Unselect Frame

    # 4. Bottom frame (outside the top frameset)
    Select Frame    frame-bottom
    ${bottom_text}=    Get Text    ${frame_text}
    Log To Console    Bottom frame text: ${bottom_text}
    Unselect Frame

    Close Browser



*** Keywords ***




