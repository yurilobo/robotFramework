*** Settings ***
Library     SeleniumLibrary
Library    XML

*** Variables ***
${URL}    https://training-wheels-protocol.herokuapp.com/     
${BROWSER}    chrome
${CHECKBOX}    id:thor
${CHECKBOX2}    css:input[value='iron-man']

*** Test Cases ***
Marcando opção com id
    Open Browser       ${URL}      ${BROWSER}
    Go To              ${URL}/checkboxes
    Select Checkbox    ${CHECKBOX}
    Checkbox Should Be Selected    ${CHECKBOX}
    Sleep    5
    Close Browser

Marcando opção com seletor comum
    [tags]    ironman
    Open Browser       ${URL}      ${BROWSER}
    Go To              ${URL}/checkboxes
    Select Checkbox    ${CHECKBOX2}
    Checkbox Should Be Selected    ${CHECKBOX2}
    Sleep    5
    Close Browser