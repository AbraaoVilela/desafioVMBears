*** Settings ***
Documentation             Suite De Teste - Validacao Envio do Email Com Sucesso.

Resource                  ../resources/Base.robot
Suite Setup               Start Browser Session
Test Teardown             Take Screenshot

*** Test Cases ***
Cenário de Teste - Validar Mensagem De "Sending e-mail success!” na tela.
    [tags]                      01
    Given that the user is logged into the home page
    And the user wants select the make of the car
    And the user wants select the model of the car
    And the user wants fill the engine performance
    And the user wants fill the date of manufacture
    And the user wants select the number of seats
    And the user want click in YES for Right Hand Drive
    And the user wants select the fuel type
    And the user wants fill the payload (KG)
    And the user wants fill the Total Weight (KG)
    And the user wants fill the list price
    And the user wants fill the license Plate Number
    And And the user wants fill the Annual Mileage
    Then click the button next for go to enter Insurant Data
    
