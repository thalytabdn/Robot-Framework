*** Settings ***
Library  app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
  ${result}=  Welcome  Thalyta
  Should Be Equal  ${result}  Olá Thalyta, bem vinda ao curso básico de Robot Framework