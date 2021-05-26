*** Settings ***
Documentation                      Testsuite Veterinary Functionality
Resource                           ../Resources/keywords_veterinary.robot
Resource                           ../Resources/keywords_general.robot
Library                            SeleniumLibrary
Test Setup                         Begin Web Test
Test Teardown                      End Web Test