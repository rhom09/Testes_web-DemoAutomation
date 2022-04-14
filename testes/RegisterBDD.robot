*** Settings ***
Resource            ../resources/ResourceBDD.robot
Resource            ../resources/BDDpt-br.robot
Resource            ${EXECDIR}/pages/registerPage.robot
Suite Setup         Nova Sessão
Suite Teardown      Encerra Sessão

*** Test Cases ***
Cenário 01: Fazer o registro com sucesso
    Dado que esteja na tela de cadastro
    Quando preencho todo o formulario
    Então vejo a mensagem de sucesso 
