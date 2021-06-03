*** Settings ***
Resource  ../Resources/common.robot
Resource  ../Resources/variables.robot
Resource  ../Resources/FRONT/accueil_national.robot
Resource  ../Resources/FRONT/accueil_region.robot
Resource  ../Resources/FRONT/authentification.robot
Resource  ../Resources/FRONT/mentions_national.robot
Resource  ../Resources/FRONT/mentions_region.robot
Resource  ../Resources/BACK_REGION/acces_BO_APC.robot
Resource  ../Resources/BACK_FNCE/acces_BO_FNCE.robot
Resource  ../Resources/FRONT/HP/hp_apc.robot
Resource  ../Resources/FRONT/ACTU/mp_actu.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test

*** Test Cases ***
Acceder page accueil national
    accueil_national.Acceder a la page authentification national

Acceder page accueil region
    accueil_region.Acceder a la page authentification regional

Acceder pages legales National
    mentions_national.Acceder a la page authentification
    mentions_national.Acceder mentions legales National
    mentions_national.Acceder politique cookies National

Acceder pages legales Regional
    mentions_region.Acceder Page authentification APC
    mentions_region.Acceder Page mention region
    mentions_region.Acceder Page Contact
    mentions_region.Acceder Page Donnee perso
    mentions_region.Acceder Page Politique cookie
    mentions_region.Acceder code oublie

Authentification Front APC
    authentification.Acceder page authentification APC
    authentification.Affichage Header

Acces BO National
    acces_BO_FNCE.Acces au BO national

Acces BO Regional
    acces_BO_APC.Acces au BO region
    acces_BO_APC.Ouvrir page accueil APC en BO

Affichage HP APC
    hp_apc.Acceder page authentification APC
    hp_apc.Affichage Header
    hp_apc.Affichage Mise en avant haute
    hp_apc.Affichage Agenda
    hp_apc.Affichage Menu institutionnel
    hp_apc.Affichage Carrousel Actualités
    hp_apc.Affichage Reseaux sociaux
    hp_apc.Affichage Formations
    hp_apc.Acces Menu Formation

Affichage MP Actualite APC
    mp_actu.Acceder a la MP Actualite APC
    mp_actu.Affichage MP Actualite APC
    mp_actu.Ouverture Mise en avant actu depuis MP
