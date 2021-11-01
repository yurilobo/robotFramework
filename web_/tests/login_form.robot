*** Settings ***
Resource    base.robot
Test Setup    Nova sessão    
Test Teardown    Fechar sessão

*** Test Cases ***
Selecionar por texto e validar pelo valor
    Go To                         ${URL}/login
    Input Text     css:input[name=username]    stark
    Input Text     css:input[name=password]    jarvis!
    Click Element  class:btn-login

    Page Should Contain    Olá, Tony Stark. Você acessou a área logada!