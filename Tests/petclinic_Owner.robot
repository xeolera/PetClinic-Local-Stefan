*** Settings ***
Documentation                       This is some basic info about the whole test suite.
Resource                            ../Resources/keywords_owner.robot
Library                             SeleniumLibrary
Suite Setup                         Begin Web Test
Suite Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/

*** Test Cases ***

User can access website
    [Documentation]                 This is some basic info about the test
    [Tags]                          Test 1
    Go to Web Page