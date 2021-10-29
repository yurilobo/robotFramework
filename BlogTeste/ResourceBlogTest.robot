*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    http://robotizandotestes.blogspot.com/
${BROWSER}  chrome
${BTN_PESQUISA}    css=button.search-expand.touch-icon-button
${INPUT_PESQUISAR}    name=q
*** Keywords ***
Acessar a página do ResourceBlogTest
    Open Browser    url= ${URL}    browser= ${BROWSER}
    Title Should Be    Robotizando Testes
Pesquisar por um post com "${TEXTO_PESQUISA}"
    Click Button    ${BTN_PESQUISA}
    Input Text    locator    text