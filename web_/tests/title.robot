*** Settings ***
Resource    base.robot
Test Setup    Nova sessão    
Test Teardown    Fechar sessão

*** Test Cases ***
Should See Page Title
    Title Should Be    Training Wheels Protocol
   
