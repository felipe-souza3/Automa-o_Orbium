#language:pt

Funcionalidade: Contrato do Estabelecimento
  Para que o usuário possa ter acesso as informações do Contrato do estabelecimento
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações 

Contexto: Estar na tela de Dados Principais e Informações Adicionais
  Dado que o usuário esteja na tela de Dados Principais e Informações Adicionais

@smoke @publico @estabelecimento @estab_cont
Cenário: Aba Contrato
  Quando clicar na aba Contrato 
  Então o sistema deve exibir na tela
  """
  Consulta de Contratos
  """

@smoke @publico @estabelecimento @estab_lupa
Cenário: Contratos_lupa
  Quando clicar na aba Contrato 
  E clicar no botão lupa 
  Então sistema deve exibir  
  """
  Estabelecimento Atendido
  """

@smoke @publico @estabelecimento @estab_cond
Cenário: Contratos_Condições 
  Quando clicar na aba Contrato
  E clicar no botão lupa 
  E clicar na aba Condições Especiais
  Então o sistema deve exibir a tela de
  """
  Condições
  """

@smoke @publico @estabelecimento @estab_inf
Cenário: Contratos_Informações Contrato
  Quando clicar na aba Contrato
  E clicar no botão lupa 
  E clicar na aba Informações Contrato
  Então o sistema deve exibir a tela 
  """
  Informações Contrato
  """