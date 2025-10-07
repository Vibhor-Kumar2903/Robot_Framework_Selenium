*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser_1}          chrome
${browser_2}          headlesschrome
${locate_user}        name=username
${locate_pass}        name=password

*** Keywords ***
Open Browser For Orange HRM
    Open Browser    ${url}      ${Browser_1}
    Maximize Browser Window
    Sleep    3s

Close My Browser
    Close All Browsers
    
Enter Username
    [Arguments]     ${username}
    Wait Until Element Is Visible    ${locate_user}
    Clear Element Text    ${locate_user}
    Input Text    ${locate_user}    ${username}

Enter Password
    [Arguments]     ${password}
    Wait Until Element Is Visible    ${locate_pass}
    Clear Element Text    ${locate_pass}
    Input Text    ${locate_pass}    ${password}

Click On Login Button
    Click Button    xpath=//button[text()=' Login ']

Validate Error Message
    Wait Until Page Contains    Invalid credentials
    Page Should Contain    Invalid credentials
    
Title Should Be Visible
    Wait Until Page Contains    Dashboard
    Page Should Contain    Dashboard


Message Should Be Visible
    ${text_value}   Run Keyword And Return Status    Element Should Be Visible    xpath=//button[text()=' Login ']
    IF    ${text_value} == True
        Validate Error Message
    ELSE
         Title Should Be Visible
    END



