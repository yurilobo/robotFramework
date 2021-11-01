*** Settings ***
Resource    base.robot
Test Setup    Nova sessão    
Test Teardown    Fechar sessão

*** Variables ***
${CHECKBOX}    id:thor
${CHECKBOX2}    css:input[value='iron-man']

*** Test Cases ***
Marcando opção com id
    Go To              ${URL}/checkboxes
    Select Checkbox    ${CHECKBOX}
    Checkbox Should Be Selected    ${CHECKBOX}
    Sleep    5
    

Marcando opção com seletor comum
    [tags]    ironman
    Go To              ${URL}/checkboxes
    Select Checkbox    ${CHECKBOX2}
    Checkbox Should Be Selected    ${CHECKBOX2}
    Sleep    5

