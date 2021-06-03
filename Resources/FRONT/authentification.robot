*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acceder page authentification APC
    Go To  ${URL_REGION}
    Wait Until Page Contains  Bienvenue
    Input Text  username  ${USERNAME}
    Input Text  password  ${PASSWORD}
    Click Button  xpath=/html/body/div/div/div[2]/div[2]/form/fieldset/div[3]/div/div/button[2]

Affichage Header
    Page Should Contain Element  xpath=/html/body/header/div/nav/div[1]
    Page Should Contain Element  xpath=/html/body/header/div/nav/div[1]/a/figure
    Page Should Contain Element  xpath=/html/body/header/div/nav/div[1]/form
    Page Should Contain Element  id:userDropdown

