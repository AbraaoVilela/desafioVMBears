# Projeto de Automação com Robot Framework e Browser Library

## Descrição

Este projeto consiste em automação de testes utilizando o Robot Framework em conjunto com a biblioteca Browser para interações com navegadores web. O objetivo é simplificar a execução de testes automatizados em ambientes web de maneira eficiente e escalável.

## Pré-requisitos

Certifique-se de ter os seguintes requisitos instalados em seu ambiente de desenvolvimento:

- [Python](https://www.python.org/) (versão 3.7 ou superior)
- [Robot Framework](https://robotframework.org/) (instalado via pip)
- [Browser Library](https://marketsquare.github.io/robotframework-browser/Browser.html) (instalado via pip)

Você pode instalar o Robot Framework e a Browser Library usando os seguintes comandos:

```bash
pip install robotframework
pip install robotframework-browser
rfbrowser init

test: Contém os casos de teste escritos em arquivos com extensão .robot.

resources: Armazena arquivos contendo palavras-chave customizadas que podem ser reutilizadas nos casos de teste.

variables: Contém arquivos com variáveis utilizadas nos testes.

log: Diretório onde os resultados dos testes serão armazenados.

README.md: Este arquivo que fornece informações sobre o projeto.

Executando os Testes

Para executar os testes, utilize o seguinte comando:

robot -d ./log test/ValidarEnvioEmailTest.robot

Também pode ser executado unico e exclusivo test.

robot -d ./log -i 01 test/ValidarEnvioEmailTest.robot

Os resultados dos testes serão gerados no diretório log/.

Contribuições Contribuições são bem-vindas! Sinta-se à vontade para abrir issues, pull requests ou propor melhorias para o projeto.