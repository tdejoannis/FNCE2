*** Settings ***
Library  SeleniumLibrary
Resource  ../../common.robot
Resource  ../../variables.robot

*** Keywords ***
Acceder page authentification APC
    Delete All Cookies
    Go To  ${URL_REGION}
    Input Text  username  ${USERNAME}
    Input Text  password  ${PASSWORD}
    Click Button  xpath=/html/body/div/div/div[2]/div[2]/form/fieldset/div[3]/div/div/button[2]
    Wait Until Page Contains  Agenda

Affichage Header
    Page Should Contain Element  xpath=/html/body/header/div/nav/div[1]
    Page Should Contain Element  xpath=/html/body/header/div/nav/div[1]/a/figure
    Page Should Contain Element  xpath=/html/body/header/div/nav/div[1]/form
    Page Should Contain Element  id:userDropdown

Affichage Mise en avant haute
    Page Should Contain  Actualité

Affichage Agenda
    Page Should Contain Element  id:agenda_events

Affichage Menu institutionnel
    Page Should Contain Element  xpath=/html/body/main/div/div/div[2]/ul/li[1]/a
    Page Should Contain Element  xpath=/html/body/main/div/div/div[2]/ul/li[2]/a
    Page Should Contain Element  xpath=/html/body/main/div/div/div[2]/ul/li[3]/a
    Page Should Contain Element  xpath=/html/body/main/div/div/div[2]/ul/li[4]/a

Affichage Carrousel Actualités
    Scroll Element Into View  xpath=/html/body/main/div/div/div[2]/ul/li[1]/a
    Wait Until Element Is Visible  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[1]/div[1]/div[1]/a
    Click Element  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[1]/div[1]/div[1]/a
    Page Should Contain  Publié
    Go Back
    Click Link  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[1]/div[2]/div[1]/a
    Page Should Contain  Publié
    Go Back
    Click Link  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[2]/div[1]/h4/a
    Page Should Contain  Publié
    Go Back
    Click Link  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[2]/div[2]/h4/a
    Page Should Contain  Publié
    Go Back
    Click Link  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[2]/div[3]/h4/a
    Page Should Contain  Publié
    Go Back
    Click Link  xpath=/html/body/main/div/div/div[3]/div[1]/div/div[3]/a
    Page Should Contain  Populaire
    Go Back

Affichage Reseaux sociaux
    Assign ID To Element  xpath=/html/body/main/div/div/div[3]/div[2]/div/div/div[2]  reseaux_sociaux
    Page Should Contain Element  reseaux_sociaux

Affichage Formations
    Scroll Element Into View  xpath=/html/body/main/div/div/h2
    Wait Until Element Is Visible  xpath=/html/body/main/div/div/div[4]/div[1]/div[1]/div/div/div[1]/a
    Click Element  xpath=/html/body/main/div/div/div[4]/div[1]/div[1]/div/div/div[1]/a
    Wait Until Page Contains  Informations
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/div[1]/div[2]/div/div/div[1]/a
    Wait Until Page Contains  Informations
    Go Back

Acces Menu Formation
    Click Element  xpath=/html/body/main/div/div/div[4]/ul/li[2]/a
    Wait Until Page Contains  Filtrer
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/ul/li[3]/a
    Wait Until Page Contains  Filtrer
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/ul/li[4]/a
    Page Should Contain Element  xpath=/html/body/main/div/iframe
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/ul/li[5]/a
    Page Should Contain Element  xpath=/html/body/main/div/iframe
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/ul/li[6]/a
    Page Should Contain Element  xpath=/html/body/main/div/iframe
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/ul/li[7]/a
    Page Should Contain Element  xpath=/html/body/main/div/iframe
    Go Back
    Click Element  xpath=/html/body/main/div/div/div[4]/div[2]/a
    Wait Until Page Contains  Filtrer
    Go Back