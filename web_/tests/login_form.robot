*** Settings ***
Resource    base.robot
Test Setup    Nova sessão    
Test Teardown    Fechar sessão


*** Test Cases ***
Login com Sucesso
    Go To                         ${URL}/login
    Login with     stark    jarvis!

    Should see loger user       Tony Stark

Senha Invalida
    [tags]    login_error
    Go To                         ${URL}/login
    Login with    stark    aeer4
    
    Should contain login alert   Senha é invalida!

    
Usuário não existente
    [tags]    login_user404
    Go To                         ${URL}/login
    Login with    sqwno    aeer4
    Should contain login alert   O usuário informado não está cadastrado!

*** Keywords ***
Login with
    [Arguments]    ${uname}    ${pass}
    
    Input Text     css:input[name=username]    ${uname}
    Input Text     css:input[name=password]    ${pass}
    Click Element  class:btn-login

Should contain login alert
    [Arguments]    ${expext_message}  

    ${message}=    Get WebElement     id:flash
    Should Contain     ${message.text}     ${expext_message} 

Should see loger user
    [Arguments]    ${full_name}

    Page Should Contain    Olá, ${full_name}.    Você acessou a área logada!