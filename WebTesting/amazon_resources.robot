*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}   chrome
${URL}       https://www.amazon.com.br/
${LIVROS}    //a[contains(.,'Livros')]
${PESQUISA}  //input[contains(@type,'text')]
${LIVRO}     //span[@class='a-size-medium a-color-base a-text-normal'][contains(.,'Textos para tocar cicatrizes - Textos cruéis demais')]



*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser    
Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LIVROS}

Entrar no menu livros
    Click Element   locator=${LIVROS}


Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Pesquisar livro "${NOME DO LIVRO}"
    Wait Until Element Is Visible    locator=${PESQUISA}
    Click Element   locator=${PESQUISA}
    Input Text      locator=${PESQUISA}  text=${NOME DO LIVRO}

Clicar no botão pesquisa    
    Click Element   locator=nav-search-submit-button
    Click Element    locator=${LIVRO}

Verificar o resultado da pesquisa se está listando o produto livro "${VALIDA_LIVRO}"  
    Wait Until Element Is Visible    locator=//span[@class='a-size-extra-large celwidget'][contains(.,'${VALIDA_LIVRO}')]
    
#GHERKIN STEPS
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Livros"
    Entrar no menu livros

Então o título da página deverá ser "${TITULO}"
    Verificar se o título da página fica "${TITULO}"
Quando digitar no campo de busca o livro "${NOME DO LIVRO}"
    Pesquisar livro "${NOME DO LIVRO}"
E clicar no campo de pesquisa
    Clicar no botão pesquisa
Então o resultado da pesquisa se está listando o produto livro "${VALIDA_LIVRO}"
    Verificar o resultado da pesquisa se está listando o produto livro "${VALIDA_LIVRO}"
