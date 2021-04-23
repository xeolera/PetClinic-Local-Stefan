*** Settings ***

*** Keywords ***
Begin Web Test
    Open browser                     about:blank             ${BROWSER}
    Set selenium timeout             10
    Set selenium speed               2

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                           ${URL}

Verify Page Loaded
    ${LINK_TEXT}                    Get Title
    Should Be Equal                 ${LINK_TEXT}      SpringPetclinicAngular
    Page Should Contain             Welcome to Petclinic

Click Element Menu
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/a
    Click Element                   xpath://html/body/app-root/div[1]/nav/div/ul/li[2]/ul/li[1]/a

End Web Test
    Close Browser