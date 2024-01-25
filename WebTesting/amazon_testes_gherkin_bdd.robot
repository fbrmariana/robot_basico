*** Settings ***
Documentation  Essa suite testa o site da Amazon.com.br
Resource       amazon_resources.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***

Caso de teste 01 - Acesso ao menu "LIVROS"
    [Documentation]    Esse teste verifica o menu livros site da Amzon.com.br
    ...                continuação do comentário...
    [Tags]             menus  categorias

        Dado que estou na home page da Amazon.com.br
        Quando acessar o menu "Livros"
        Então o título da página deverá ser "Livros | Amazon.com.br" 
    # Acessar a home page do site Amazon.com.br
    # Entrar no menu livros 
    # Verificar se o título da página fica "Livros | Amazon.com.br"
    


Caso de teste 02 - Pesquisa de um livro
    [Documentation]    Esse teste verifica a busca de um livro
    [Tags]             busca livro  lista_busca
        Dado que estou na home page da Amazon.com.br
        Quando acessar o menu "Livros"
        Então o título da página deverá ser "Livros | Amazon.com.br"
        Quando digitar no campo de busca o livro "Textos para tocar cicatrizes - Textos cruéis demais"
        E clicar no campo de pesquisa
        Então o resultado da pesquisa se está listando o produto livro "Textos para tocar cicatrizes - Textos cruéis demais"
   
    # Acessar a home page do site Amazon.com.br
    # Entrar no menu livros 
    # Pesquisar livro "Textos para tocar cicatrizes - Textos cruéis demais"
    # Clicar no botão pesquisa
    # Verificar o resultado da pesquisa se está listando o produto livro "Textos para tocar cicatrizes - Textos cruéis demais"  