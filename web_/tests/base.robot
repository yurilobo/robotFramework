*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://training-wheels-protocol.herokuapp.com/     
${BROWSER}    chrome

*** Keywords ***
Nova sessão
    Open Browser    ${URL}      ${BROWSER}

Fechar sessão    
    Close Browser