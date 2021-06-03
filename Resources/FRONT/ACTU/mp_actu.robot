*** Settings ***
Library  SeleniumLibrary
Resource  ../../common.robot
Resource  ../../variables.robot

*** Keywords ***
Acceder a la MP Actualite APC
    Click Element  xpath=//*[@id="navbarMainMenu"]/ul/li[2]/a
    Wait Until Page Contains  Populaire

Affichage MP Actualite APC
    Page Should Contain Element  xpath=/html/body/main/div/div[1]/div[1]/div/div
    Page Should Contain Element  xpath=/html/body/main/div/div[1]/div[2]/div/div/ol
    Page Should Contain Element  id:formFilter
    Page Should Contain Element  xpath=/html/body/main/div/div[2]/div[2]/div[2]/div
    Page Should Contain Element  xpath=/html/body/main/div/div[2]/div[1]/div
    Page Should Contain Element  xpath=/html/body/main/div/div[2]/div[1]/div/nav/ul

Ouverture Mise en avant actu depuis MP
    Click Element  xpath=/html/body/main/div/div[1]/div[1]/div/div/div[2]/div/h2/a
    Page Should Contain  Publié le
    Page Should Contain Element  xpath=/html/body/main/div/div[1]/p[2]
    Page Should Contain Element  xpath=/html/body/main/div/div[2]/div[1]/div/picture/div[1]
    Assign Id To Element  xpath=/html/body/main/div/div[2]/div[1]/div/div/a  tag
    Page Should Contain Element  tag
    Go Back
