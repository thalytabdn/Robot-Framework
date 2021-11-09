*** Settings ***
Resource   ResourceBlogTest.robot
#keyword que vai ser executada sempre no ínicio de cada teste
Test Setup  Acessar a página do blog
#Keyword que vai ser executada sempre ao final de cada teste
Test Teardown  Fechar navegador

*** Test Case ***

Caso de Teste 01: Pesquisar por um post
  Pesquisar por um post com "Season Premiere: Introdução ao Robot Framework"
  Conferir mensagem de pesquisa por "Mostrando postagens que correspondem à pesquisa por Season Premiere: Introdução ao Robot Framework"

Caso de Teste 02: Ler um post
  Acessar o post "Season Premiere: Introdução ao Robot Framework"
  Conferir se a imagem do robô aparece
  Conferir se o texto "nesse post vou apresentar-lhes o astro deste blog" aparece
