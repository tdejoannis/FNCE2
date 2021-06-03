*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acceder a la page authentification regional
    Go To  ${URL_REGION}
    Wait Until Page Contains    cookies