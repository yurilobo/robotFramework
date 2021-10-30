*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}   https://ticket-box.s3.eu-central-1.amazonaws.com/index.html
${FIST_NAME}  Yuri
${LAST_NAME}    lobo
${LOC_FIST_N}  css=#first-name
${LOC_LAST_N}     css=#last-name
${EMAIL_USUARIO}    yuri@teste.com
${LOC_EMAIL}    css=#email
${REQUESTS}     css=#requests
${SIGNATURE}     css=#signature


*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser    browser=chrome
 
## ---- TEARDOWN
Fechar o Navegador
    Close Browser 

## ---- STEPS
Acessar a pagina do site
    Go To    ${URL}
Inserir nome
    Input Text                      ${LOC_FIST_N}   ${FIST_NAME}
    Input Text                      ${LOC_LAST_N}    ${LAST_NAME}
Inserir email
    Wait Until Element Is Enabled   ${LOC_EMAIL}
    Input Text                      ${LOC_EMAIL}   ${EMAIL_USUARIO}

Inserir Request    
    Wait Until Element Is Enabled   ${REQUESTS}
    Input Text                      ${REQUESTS}   Vegetariano
Inserir Signature
    Wait Until Element Is Enabled   ${SIGNATURE}
    Input Text                      ${SIGNATURE}    ${FIST_NAME}    ${LAST_NAME}