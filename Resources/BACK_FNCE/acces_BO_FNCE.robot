*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acces au BO national
    Go To  ${URL_BO_NATIONAL}
    Wait Until Page Contains  Identifiant
    Input Text  username  ${USERNAME}
    Input Text  password  ${PASSWORD}
    Click Button  xpath=/html/body/div/div/div[2]/div[1]/form/fieldset/button
