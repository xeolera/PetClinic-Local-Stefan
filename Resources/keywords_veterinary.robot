
### Keywords specifically regarding the Veterinary Page.
### Input own keywords here and make them generally for everyone to reuse if possible :)

*** Settings ***

*** Keywords ***

Access Web Page & Verify Home Page Loaded
    Go to Web Page

Click Menu Veterinarians
    Click Element                       xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/a
    Click Element                       xpath://html/body/app-root/div[1]/nav/div/ul/li[3]/ul/li[1]/a

Verify Veterinarians Page Loaded
    Wait Until Page Contains Element    xpath://html/body/app-root/app-vet-list/div/div/h2
    Page Should Contain                 Veterinarians

User Click Menu && Veterinarians Page Loaded
    Click Menu Veterinarians
    Verify Veterinarians Page Loaded

Click Button "Edit Vet"
    Click Element                       xpath://html/body/app-root/app-vet-list/div/div/table/tbody/tr[1]/td[3]/button[1]

Verify Edit Veterinarian Page Loaded
    Wait Until Page Contains Element    xpath://html/body/app-root/app-vet-edit/div/div/h2
    Page Should Contain                 Edit Veterinarian

User Clicks "Edit Vet" && Edit Veterinarian Page Loaded
    Click Button "Edit Vet"
    Verify Edit Veterinarian Page Loaded

Input Edit Veterinarian First Name
    [Arguments]                           ${search_term}
    Click Element                         xpath://html/body/app-root/app-vet-edit/div/div/form/div[2]/div/input
    Input Text                            id:firstName             ${search_term}

Input Edit Veterinarian Last Name
    [Arguments]                           ${search_term}
    Click Element                         xpath://html/body/app-root/app-vet-edit/div/div/form/div[2]/div/input
    Input Text                            id:lastName              ${search_term}

Click Speciality DropDown-Box
    Click Element                         xpath://html/body/app-root/app-vet-edit/div/div/form/div[4]/div/mat-form-field/div/div[1]/div/mat-select/div/div[1]/span

Click Speciality DropDown-Box Radiology
    Click Element                         xpath://html/body/div[2]/div[2]/div/div/div/mat-option[1]/span

User Clicks Speciality && Chooses Radiology
    Click Speciality DropDown-Box
    Click Speciality DropDown-Box Radiology
    Mouse Down                           xpath://html/body/app-root/app-vet-edit/div/div/form/div[3]/div/input
    Mouse Up                             xpath://html/body/app-root/app-vet-edit/div/div/form/div[3]/div/input
    #Temporär lösning - Mouse Down klicka vänstra musknappen på valfri tom webbyta och Mouse Up avlägsnar musklickandet och då försvinner dropdown menyn

Click Button "Save Vet"
    Click Element                        xpath://html/body/app-root/app-vet-edit/div/div/form/div[5]/div/button[2]

User Clicks "Save Vet" && Veterinarians Page Loaded
    Click Button "Save Vet"
    Verify Veterinarians Page Loaded