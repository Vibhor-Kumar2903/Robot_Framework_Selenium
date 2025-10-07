*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url}              https://testautomationpractice.blogspot.com/
${browser}          chrome

*** Test Cases ***
Extracting Link Texts
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    ${count}        Get Element Count    xpath://a
    Log To Console    ${count}


    FOR    ${element}    IN RANGE   1   ${count+1}
        ${link_text}    Get Text    xpath:(//a)[${element}]
        # xpath:(//a)[${element}] uses an XPath index to pick one <a> tag at a time.
        Log To Console    ${link_text}
    END





