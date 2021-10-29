*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    http://robotizandotestes.blogspot.com/
${BROWSER}  chrome
${BTN_PESQUISA}    css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}    name=q
${SUBMIT_PESQUISAR}    css=input.search-action.flat-button

*** Keywords ***
Acessar a página do ResourceBlogTest
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