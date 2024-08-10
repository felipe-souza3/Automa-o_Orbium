#language:pt

Funcionalidade: Busca de 'Público' por Estabelecimento
  Para que o usuário possa ter acesso as informações do Estabelecimento
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @busca @estab @estab_radical
Cenário: Localizar Estabelecimento - CNPJ Radical
Quando selecionar a opção Estabelecimento - CNPJ Radical
E preencher o campo com o número do CNPJ Radical do Estabelecimento
E clicar na lupa para pesquisar Estabelecimento 
Então o sistema deve localizar CNPJ Radical do Estabelecimento e exibir
"""
Dados Principais e as Informações Adicionais
"""

@smoke @publico @busca @estab @estab_completo
Cenário: Localizar Estabelecimento - Razão Social (nome completo)
  Quando selecionar a opção Estabelecimento - Razão Social nome completo
  E preencher o campo com o nome completo do Estabelecimento
  E clicar na lupa para pesquisar Estabelecimento 
  Então o sistema deve localizar nome do Estabelecimento e exibir em tela
  """
  Dados Principais e as Informações Adicionais
  """

@smoke @publico @busca @estab @estab_parcial
Cenário: Localizar Estabelecimento - Razão Social (nome parcial)
  Quando selecionar a opção Estabelecimento - Razão Social nome parcial
  E preencher o campo com o nome parcial do Estabelecimento
  E clicar na lupa para pesquisar Estabelecimento por Nome Parcial
  Então o sistema deve localizar nome do Estabelecimento e abrir uma tela com
  """
  Dados Principais e as Informações Adicionais
  """
@smoke @publico @busca @estab @estab_contrato
Cenário: Localizar Estabelecimento - Num do Contrato
  Quando selecionar a opção Estabelecimento - Num do Contrato
  E preencher o campo com o Num do Contrato
  E clicar na lupa para pesquisar numero do contrato
  Então o sistema deve localizar o Contrato e abrir uma tela com
  """
  Dados Principais e as Informações Adicionais
  """
@smoke @publico @busca @estab @estab_reebolso
Cenário: Localizar Estabelecimento - Num do Reembolso
  Quando selecionar a opção Estabelecimento - Num do Reembolso
  E preencher o campo com o Num do Reembolso
  E clicar na lupa para pesquisar num reembolso
  Então o sistema deve localizar o Reembolso e abrir uma tela com   
  """
  Dados Principais e as Informações Adicionais
  """

@smoke @publico @busca @estab_autorizacao
Cenário: Localizar Estabelecimento - N° da autorização (Data + Número)
  Quando selecionar a opção Estabelecimento - N° da autorização (Data + Número)
  E preencher o campo com Data e Número
  E clicar na lupa para pesquisar 
  Então o sistema deve localizar a autorização e abrir uma tela com          