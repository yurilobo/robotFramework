*** Settings ***
Resource    base.robot
Test Setup    Nova sessão    
Test Teardown    Fechar sessão

*** Variables ***



*** Test Cases ***
Selecionando por id
    Go To              ${URL}/radios
    Select Radio Button    movies    cap
    Radio Button Should Be Set To    movies    cap   

Selecionando por value
    Go To              ${URL}/radios
    Select Radio Button    movies    guardians
    Radio Button Should Be Set To    movies    guardians 