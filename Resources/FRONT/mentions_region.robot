*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acceder page authentification APC
    Go To  ${URL_REGION}
    Wait Until Page Contains  Bienvenue
    Page Should Contain Element  id:resetcode

Acceder Page mention region
    Click Element  xpath=/html/body/div[1]/div/div[2]/div[3]/a[1]
    Wait Until Page Contains  Informations
    Go Back

Acceder Page Contact
    Click Element  xpath=/html/body/div[1]/div/div[2]/div[3]/a[2]
    Wait Until Page Contains  question
    Go Back

Acceder Page Donnee perso
    Click Element  xpath=/html/body/div[1]/div/div[2]/div[3]/a[3]
    Wait Until Page Contains  informer
    Go Back

Acceder Page Politique cookie
    Click Element  xpath=/html/body/div[1]/div/div[2]/div[3]/a[4]
    Wait Until Page Contains  Politique de cookies
    Go Back

Acceder code oublie
    Click Link  xpath=/html/body/div[1]/div/div[2]/div[2]/form/fieldset/a
    Wait Until Page Contains  Remplissez
    Go Back