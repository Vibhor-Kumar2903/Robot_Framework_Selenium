*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/CommonKeyword.robot

Suite Setup         Open Browser Without Arguments
Suite Teardown      Close Browser

Test Setup          Log To Console    Login Page
Test Teardown       Log To Console    Logout Page

*** Test Cases ***
Parallel Execution
    Log To Console      pabot
    Log To Console      pabot is a parallel test runner for Robot Framework.
    Log To Console      It’s an external tool (you install it via pip install robotframework-pabot).
    Log To Console      It allows you to run multiple Robot Framework test cases or suites at the same time — in parallel processes — instead of running them one after another.
    Log To Console      Without pabot: tests run sequentially (one after another).
    Log To Console      With pabot: tests run concurrently using multiple CPU cores.

