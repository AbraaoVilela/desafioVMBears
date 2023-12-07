*** Settings ***
Documentation                    Acoes da pagina EnterVehicleData
Library                          Browser
Resource                         ../../resources/Base.robot

*** Variables ***
### <-- LOCATORS FIELDS --> ###
${TITLE_HOMEPAGE}                id=tricentis_logo

### <-- INPUT VALUE FIELDS --> ###

*** Keywords ***
Given that the user is logged into the home page
    Go To                         ${URL}
    Wait For Elements State       ${TITLE_HOMEPAGE} 