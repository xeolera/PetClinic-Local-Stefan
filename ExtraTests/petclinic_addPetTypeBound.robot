*** Settings ***
Documentation                      Testsuite Add Pet Type
Resource                           ../Resources/keywords_petType.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://localhost:4200/
${URL2}             http://localhost:4200/petclinic/owners