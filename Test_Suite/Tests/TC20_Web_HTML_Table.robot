*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/CommonKeyword.robot

*** Variables ***
${url}                  https://testautomationpractice.blogspot.com/
${browser}              chrome
${static_table}         xpath=//table[@name='BookTable']
${static_table_rows}    xpath=//div[@id='HTML1']/div/table/tbody/tr
${static_table_col}     xpath=//div[@id='HTML1']/div/table/tbody/tr/td
${static_table_head_col}     xpath=//div[@id='HTML1']/div/table/tbody/tr/th

*** Test Cases ***
Handling Static HTML Table
    Open Browser To Landing Page    ${url}      ${browser}
    Sleep    2s
    ${row_count}     Get Element Count    ${static_table_rows}
    Log To Console    Total Rows : ${row_count}

    ${header_count}     Get Element Count    ${static_table_head_col}
    Log To Console    Header Columns : ${header_count}

    ${columns_count}     Get Element Count    ${static_table_col}
    Log To Console    Total Columns : ${columns_count}

    @{rows}     Get WebElements    ${static_table_rows}
    Execute List Items      @{rows}
    Sleep    2s

    Table Header Should Contain    ${static_table}    BookName
    Table Column Should Contain    ${static_table}    2    Author
    Table Cell Should Contain    ${static_table}    4    4    300
    Table Row Should Contain    ${static_table}    5    3000
    Sleep    2s
    Close Browser

*** Keywords ***
Execute List Items
    [Arguments]  @{list_items}
    FOR    ${item}      IN      @{list_items}
        ${item_text}    Get Text    ${item}
        Log To Console    ${item_text}
    END

