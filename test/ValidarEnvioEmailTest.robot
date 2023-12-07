*** Settings ***
Documentation             Suite De Teste - Validacao Envio do Email Com Sucesso.

Resource                  ../resources/Base.robot
Suite Setup               Start Browser Session
Test Teardown             Take Screenshot

*** Test Cases ***
Cenário de Teste - Validar Mensagem De "Sending e-mail success!” na tela.
    [tags]                      01
    Given that the user is logged into the home page
