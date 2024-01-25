*** Settings ***
Documentation  
Library         String

*** Variable ***
@{MESES}   JANEIRO
...        FEVEREIRO  
...        MARÇO   
...        ABRIL   
...        MAIO   
...        JUNHO    
...        JULHO    
...        AGOSTO    
...        SETEMBRO    
...        OUTUBRO    
...        NOVEMBRO    
...        DEZEMBRO

*** Test Cases ***
Mostrar Meses
    Meses

*** Keywords ***
 # Lendo os meses 
Meses  
  Log    Meses do ano: ${MESES}
    