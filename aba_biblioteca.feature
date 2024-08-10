#language:pt

Funcionalidade: Busca de biblioteca
  Como um usuário do Orbium
  Quero realizar a busca de biblioteca
  Para consultar as informações do Atendimento

Contexto: Estar na aba biblioteca
  Dado Dado que o usuário esteja no menu orbium 

@smoke @busca_biblioteca
Cenário: Localizar biblioteca
  Quando selecionar opção biblioteca
  E preencher o campo com o biblioteca
  E clicando na lupa de pesquisar biblioteca
  Então o sistema deve exibir pesquisa biblioteca