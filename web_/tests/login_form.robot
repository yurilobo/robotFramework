*** Settings ***
Resource    base.robot
Test Setup    Nova sessão    
Test Teardown    Fechar sessão
Library    XML

*** Test Cases ***
Login com Sucesso
    Go To                         ${URL}/login
    Input Text     css:input[name=username]    stark
    Input Text     css:input[name=password]    jarvis!
    Click Element  class:btn-login

    Page Should Contain    Olá, Tony Stark. Você acessou a área logada!

Senha Invalida
    [tags]    login_error
    Go To                         ${URL}/login
    Input Text     css:input[name=username]    stark
    Input Text     css:input[name=password]    aeer4
    Click Element  class:btn-login

    ${message}=     Get WebElement    id:flash

    Should Contain     ${message.text}   Senha é invalida!

    
Usuário não existente
    [tags]    login_user404
    Go To                         ${URL}/login
    Input Text     css:input[name=username]    sqwno
    Input Text     css:input[name=password]    aeer4
    Click Element  class:btn-login

    ${message}=     Get WebElement    id:flash

    Should Contain     ${message.text}   O usuário informado não está cadastrado!