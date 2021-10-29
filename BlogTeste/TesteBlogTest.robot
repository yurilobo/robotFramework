*** Settings ***
Resource  ResourceBlogTest.robot

*** Test Cases ***
Caso de Teste 01: Pesquisar um post
    Acessar a página do ResourceBlogTest
    Pesquisar por um post com "Season Premiere: Introdução ao Robot Framework"
    #Conferir mensagem de pesquisa por "Mostrando postagens que correspondem à pesquisa por Season Prim "