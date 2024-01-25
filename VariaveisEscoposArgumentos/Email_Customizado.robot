*** Settings ***
Documentation   Exemplo de escopo de variáveis: GLOBAIS, SUITE, TESTE (test case) e LOCAL (keyword)
Library         String

*** Variable ***
&{PESSOA}  nome=Mariana        sobrenome=Leite


*** Test Cases ***
Gerar e-mail customizado e aleatório
  ${E-MAIL}   Monta e-mail aleatório  ${PESSOA.nome}  ${PESSOA.sobrenome} 
  Log to Console    ${E-MAIL}
   
*** Keywords ***
Monta e-mail aleatório
  [Arguments]  ${NOME}  ${SOBRENOME}
  ${ALEATORIA}    Generate Random String
  ${EMAIL_FINAL}    Set Variable  ${NOME}  ${SOBRENOME}${ALEATORIA}@teste.com
  [Return]        ${EMAIL_FINAL}




  