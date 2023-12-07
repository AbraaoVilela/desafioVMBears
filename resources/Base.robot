*** Settings ***

Documentation             Arquivo Base Do Projeto

Library                   Browser
Resource                  pages/enterVehicleDataPage.robot


*Variables*
${BROWSER}                chromium
${URL}                    http://sampleapp.tricentis.com/101/app.php

*Keywords*
Start Browser Session
    New Browser            ${BROWSER}           
    ...                    False
    New Page               about:blank 

Clear Local Storage And Take Screenshot
    Take Screenshot
    LocalStorage Clear

Thinking And Take Screenshot
    [Arguments]           ${TIMEOUT}
    Sleep                 ${TIMEOUT}