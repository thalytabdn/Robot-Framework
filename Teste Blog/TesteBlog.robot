*** Settings ***
Resource   ResourceBlogTest.robot

*** Test Case ***

Caso de Teste 01: Pesquisar por um post
  Acessar a página do blog
  Pesquisar por um post com "Season Premiere: Introdução ao Robot Framework"
  Conferir mensagem de pesquisa por "Mostrando postagens que correspondem à pesquisa por Season Premiere: Introdução ao Robot Framework"
  Fechar navegador

Caso de Teste 02: Ler um post
  Acessar a página do blog
  Acessar o post "Season Premiere: Introdução ao Robot Framework"
  Conferir se a imagem do robô aparece
  Conferir se o texto "nesse post vou apresentar-lhes o astro deste blog" aparece
  Fechar navegador
