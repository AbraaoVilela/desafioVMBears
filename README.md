# desafioVMBears
Criado para realização do desafio técnico - VMBears.

Projeto de Automação com Robot Framework e Browser Library

Descrição

Este projeto é uma implementação de automação de testes utilizando o Robot Framework em conjunto com a biblioteca Browser para interações com navegadores web. O objetivo é facilitar a execução de testes automatizados em ambientes web de forma eficiente e escalável.

Pré-requisitos
Certifique-se de ter os seguintes requisitos instalados em seu ambiente de desenvolvimento:

Python (versão 3.7 ou superior)
Robot Framework (instalado via pip)
Browser Library (instalado via pip)
Você pode instalar o Robot Framework e a Browser Library usando os seguintes comandos:


pip install robotframework
pip install robotframework-browser
rfbrowser init

Estrutura do Projeto
A estrutura do projeto é organizada da seguinte forma:

Copy code
projeto-automacao/
│
├── test
│   ├── caso_de_teste_1.robot
│   ├── caso_de_teste_2.robot
│   └── ...
│
├── resources/
│   ├── keywords.robot
│   └── ...
│
├── log/
│   └── ...
│
├── README.md
└── requirements.txt

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

Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues, pull requests ou propor melhorias para o projeto.