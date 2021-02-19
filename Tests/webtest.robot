*** Settings ***
Documentation                       This is some basic info about the whole test suite.
Resource                            ../Resources/keywords.robot
Library                             SeleniumLibrary
Suite Setup                          Begin Web Test
Suite Teardown                       End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              https:/www.willys.se/

*** Test Cases ***

User can access website
    [Documentation]                 This is some basic info about the test
    [Tags]                          Test 1
    Go to Web Page

User can access website AND search for specific word/product
    [Documentation]                 This is some basic info about the test2
    [Tags]                          Test 2
    Go to Web Page
    Search for Product              kiwi
User can search for another product
    [Documentation]                 This is some basic info about the test3
    [Tags]                          Test 3
    Go to Web Page
    Search for Product              hundgodis