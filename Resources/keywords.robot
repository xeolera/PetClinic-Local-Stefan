*** Settings ***

*** Keywords ***
Begin Web Test
    Open browser                   about:blank             ${BROWSER}
    Set selenium timeout           10

Go to Web Page
    Load Page
    Verify Page Loaded

Load Page
    Go to                           ${URL}

Verify Page Loaded
    ${LINK_TEXT}                    Get Title
    Should Be Equal                  ${LINK_TEXT}      Handla billig mat online | Willys

Search for Product
    [ARGUMENTS]                     ${SEARCH_TERM}
    Enter Search Term               ${SEARCH_TERM}
    Submit Search
    Press Keys                      xpath://input[@id="selenium--search-items-input"]       RETURN
    Verify Search Completed         ${SEARCH_TERM}

Enter Search Term
    [Arguments]                     ${SEARCH_TERM}
    Input Text                      id:selenium--search-items-input         ${SEARCH_TERM}

Submit Search
    Press Keys                      xpath://input[@id="selenium--search-items-input"]       RETURN

Verify Search Completed
    [Arguments]                    ${SEARCH_TERM}
    Wait Until Page Contains Element    xpath://*[@id="selenium--product-grid-header"]
    ${ACTUAL_TERM}                 Get Text  xpath://*[@id="selenium--product-grid-header"]
    Should Be Equal                "Sökord: ${SEARCH_TERM}"        "${ACTUAL_TERM}"

End Web Test
    Close Browser