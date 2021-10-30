*** Settings ***
Resource  ResourceWebForm.robot
Test Setup  Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
Caso de Teste 01: Preencher o formulario
    Acessar a pagina do site
    Inserir nome
    Inserir email
    Inserir Request
    Inserir Signature
