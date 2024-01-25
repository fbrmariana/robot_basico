*** Settings ***
Documentation   Exemplo tipos de variaveis

***Variable***
#Simples
${SIMPLES}  Vamos ver os tipos de váriaveis no robot
#Tipo Lista
@{FRUTAS}  morango  banana  maça  uva  abacaxi  
#Tipo Dicionário
&{PESSOA}  nome=Mariana Leite  email=mari@teste.com  idade=28  sexo=feminino

*** Test Cases ***
Caso de teste de exemplo 01
     Uma keyword qualquer 01

*** Keywords *** 
Uma keyword qualquer 01

    Log  ${SIMPLES}

    Log  Essa tem que ser maça: ${FRUTAS[2]} e essa tem que ser morango: ${FRUTAS[0]}

    Log  Nome: ${PESSOA.nome} e email: ${PESSOA.email}