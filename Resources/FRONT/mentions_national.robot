*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acceder a la page authentification
    Go To  ${URL_NATIONAL}
    Wait Until Page Contains    BIENVENUE

Acceder mentions legales National
    click Element  xpath=/html/body/div/div[2]/div/div/a[1]
    Wait Until Page Contains  Informations
    Go Back

Acceder politique cookies National
    click Element  xpath=/html/body/div/div[2]/div/div/a[2]
    Wait Until Page Contains  Prévoyance
    Go Back