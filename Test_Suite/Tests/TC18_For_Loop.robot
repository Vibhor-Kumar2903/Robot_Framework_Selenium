*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url}              https://testautomationpractice.blogspot.com/
${browser}          chrome
${all_days}         xpath=//div[@class="form-group"][4]//descendant::div/label


*** Test Cases ***
Using Robot FrameWork For Loop
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    @{list_of_days}     Get WebElements    ${all_days}
    Execute List Items      @{list_of_days}


*** Keywords ***
Execute List Items
    [Arguments]  @{list_items}
    FOR    ${item}      IN      @{list_items}
        ${item_text}    Get Text    ${item}
        Log To Console    ${item_text}
    END

