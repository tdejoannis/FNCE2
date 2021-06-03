*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acceder a la page authentification national
    Go To  ${URL_NATIONAL}
    Wait Until Page Contains    BIENVENUE