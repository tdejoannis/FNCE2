*** Settings ***
Library  SeleniumLibrary
Resource  ../common.robot
Resource  ../variables.robot

*** Keywords ***
Acces au BO region
    Go To  ${URL_BO_REGIONAL}
    Wait Until Page Contains  Identifiant
    Input Text  username  ${USERNAME}
    Input Text  password  ${PASSWORD}
    Click Button  xpath=/html/body/div/div/div[2]/div[1]/form/fieldset/button
    Wait Until Page Contains  tableau

Ouvrir page accueil APC en BO
    Click Link  xpath=/html/body/nav[1]/div/div/ul/li[1]/a
    Click Link  xpath=//*[@id="main__content"]/div/div/ul/li[1]/a
    Click Element  id:sidebar_left__tree-tab
    Wait Until Element Is Visible  xpath=/html/body/div[3]/div[2]/div[2]/div/div/div[1]/ul/li/ul/li[1]/div/a
    Click Element  xpath=/html/body/div[3]/div[2]/div[2]/div/div/div[1]/ul/li/ul/li[1]/div/a
    Click Element  id:content__sidebar_right__edit-tab
    Wait Until Element Is Visible  id:version-draft-conflict-modal
    Click Element  xpath=//*[@id="version-draft-conflict-modal"]/div/div/div[2]/div[2]/div[2]/button
    Click Element  xpath=//*[@id="content_edit__sidebar_right__cancel-tab"]