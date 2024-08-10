#language:pt

Funcionalidade: Busca de 'Público' por Nome e CPF
  Para que o usuário possa ter acesso as informações do Contrato
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @busca @nome
Cenário: Localizar Nome
  Quando selecionar a opção Nome
  E preencher o campo com o Nome
  E clicar na lupa para pesquisar nome
  Então o sistema deve localizar o nome e abrir uma tela sobre o Contrato e exibir
  """
  Dados Principais e as Informações Adicionais
  """

@smoke @publico @busca @cpf
Cenário: Localizar CPF
  Quando selecionar a opção CPF
  E preencher o campo com o CPF
  E clicar na lupa para pesquisar nome
  Então o sistema deve localizar o CPF e abrir uma tela sobre o Contrato E
  """
  Dados Principais e as Informações Adicionais
  """  