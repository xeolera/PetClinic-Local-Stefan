*** Settings ***
Documentation                      Testsuite Owner-functionality
Resource                           ../Resources/keywords_owner.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners

*** Test Cases ***

User can access website.
    [Documentation]                 Verifying the page - access to welcome-page.
    [Tags]                          TC_1
    Go to Web Page
    End Web Test

User can access website and navigate to owner-list.
    [Documentation]                 Navigate to Owner-list.
    [Tags]                          TC_2
    Go to                           ${URL}
    Click Element Menu
    End Web Test