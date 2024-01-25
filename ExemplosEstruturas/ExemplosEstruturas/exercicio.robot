*** Settings ***
Documentation    Exercício IF e FOR


*** Variables ***
@{NOMES}         1  2  3  4  1


*** Test Cases ***
Teste de imprimir 1 e 5 Maria e Jose
  Imprimir somente se for 1 e 5

*** Keywords ***
Imprimir somente se for 1 e 5
  Log To Console  ${\n}

  FOR    ${nome}    IN   @{NOMES}
      IF  ${nome} == 1
          Log To Console    Eu sou a Maria!
      ELSE IF  ${nome} == 2
          Log To Console    Eu sou o Jose!
      ELSE
          Log To Console    Eu não sou nem Maria nem Jose!
      END
  END
