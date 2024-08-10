#language:pt

Funcionalidade: Busca de Informações e Dados da Empresa CNPJ
  Para que o usuário possa ter acesso as informações e dados da Empresa
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na tela de Dados Principais e Informações Adicionais
  Dado que o usuário está na tela de Dados Principais e Informações Adicionais

@smoke @publico @empresa @emp_ped @ativoe
Cenário: Empresa_Pedidos
  Quando Preencher o filtro de pedidos
  E clicar no botão de busca
  Então deve exibir os registros de pedidos e 
  """
  Ações
  """
  
@smoke @publico @empresa @emp_ent @ativoe
Cenário: Empresa_Entregas
  Quando clicar na aba Entregas
  E Preencher o filtro de Entregas
  E clicar no botão de busca
  Então deve exibir os registros de Entregas e
  """  
  HAWB
  """

@smoke @publico @empresa @emp_finan @ativoe
Cenário: Empresa_Financeiro
  Quando clicar na aba Financeiro
  E Preencher o filtro do Financeiro
  E clicar no botão para busca
  Então deve exibir os registros de Notas Fiscais e
  """
  RPS
  """ 

@smoke @publico @empresa @emp_cont @ativoe
Cenário: Empresa_Contratos
  Quando clicar na aba Contratos
  Então deve se exibir a tela de
  """
  Visualização de Contratos
  """

@smoke @publico @empresa @emp_lupa @ativoe
Cenário: Empresa_Contratos_Lupa
  Quando clicar na aba Contratos
  E clicar na lupa
  Então deve exibir a tela de 
  """
  Cliente atendido
  """

@smoke @publico @empresa @emp_cond
Cenário: Empresa_Contratos_CondiçõesComerciais
  Quando clicar na aba Contratos
  E clicar na lupa
  E clicar na aba Condições Comerciais
  Então o sistema deve exibir a tela com 
  """
  Condições
  """

@smoke @publico @empresa @emp_benef @ativoe
Cenário: Empresa_Beneficiario
  Quando clicar na aba Beneficiário
  E preencher o filtro de Beneficiário
  #E clicar em botão buscar
  Então deve exibir lista de cartões com Saldo Expurgado 
  """
  Matrícula
  """  