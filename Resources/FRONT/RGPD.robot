*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acceder page authentification APC
    Go To  ${URL_REGION}
    Wait Until Page Contains  Bienvenue

Affichage politique cookie
    Page Should Contain Element  id:tarteaucitronPremium

Personnaliser RGPD
    Click Button  tarteaucitronPersonalize2