*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/variables.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser