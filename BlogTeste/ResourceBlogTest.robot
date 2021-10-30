*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    http://robotizandotestes.blogspot.com/
${BROWSER}  chrome
${BTN_PESQUISA}    css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}    name=q
${SUBMIT_PESQUISAR}    css=input.search-action.flat-button
${LINK_POST}    xpath=//a[contains(text(),'Season Premiere: Introdução ao Robot Framework')]
${IMG_ROBO}    xpath=//img[contains(@src, 'if_Robot_18_385830_grande')]

*** Keywords ***
Acessar a página do blog
    Open Browser    url= ${URL}    browser= ${BROWSER}
    Title Should Be    Robotizando Testes
Pesquisar por um post com "${TEXTO_PESQUISA}"
    Wait Until Element Is Visible    locator=${BTN_PESQUISA}
    Click Button    ${BTN_PESQUISA}
    Input Text   ${INPUT_PESQUISAR}   ${TEXTO_PESQUISA}
    Click Element    ${SUBMIT_PESQUISAR}

Conferir mensagem de pesquisa por "${MSG_DESEJADA}"
    Page Should Contain    text=${MSG_DESEJADA}
Fechar navegador
    Close Browser
Acessar o post "${TEXTO_PESQUISA}"
    Pesquisar por um post com "${TEXTO_PESQUISA}"
    Click Element    ${LINK_POST}
    Wait Until Page Contains    O que é Robot Framework?
    
Conferir se a imagem de um robô aparece
    Page Should Contain Image    ${IMG_ROBO}
Conferi se o texto "${TEXTO_DESEJADO}" aparece
    Page Should Contain    text=${TEXTO_DESEJADO}