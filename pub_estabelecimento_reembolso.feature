#language:pt

Funcionalidade: Reembolso do Estabelecimento
  Para que o usuário possa ter acesso as informações do Reembolso do estabelecimento
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações 

Contexto: Estar na tela de Dados Principais e Informações Adicionais
  Dado que o usuário esteja na tela de Dados Principais e Informações Adicionais

@smoke @publico @estabelecimento @estab_reemb
Cenário: Aba Reembolso
  Quando clicar na aba Reembolso
  E utilizar os filtros
  E clicar no botão buscar
  Então o sistema deve exibir o
  """
  Nº Reembolso
  """
  #verificar massa com reembolso

@smoke @publico @estabelecimento @estab_serp
Cenário: Reebolso_Serpar
  Quando clicar na aba Reembolso
  E utilizar os filtros
  E clicar no botão serpar
  Então o sistema deve exibir 
  """
  Simulação SERPAR
  """
  #verificar massa com reembolso e serpar

@smoke @publico @estabelecimento @estab_fili
Cenário: Reebolso_Filiação
  Quando clicar na aba Reembolso
  #E utilizar os filtros
  E clicar no botão filiação
  Então o sistema deve exibir em tela 
  """
  Incluir Filiação
  """

@smoke @publico @estabelecimento @estab_banco
Cenário: Reembolso_banco
  Quando clicar na aba Reembolso
  #E utilizar os filtros
  E clicar no botão banco
  Então deve exibir na tela
  """
  Inclusão Banco
  """ 