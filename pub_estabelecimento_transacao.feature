#language:pt

Funcionalidade: Transação do Estabelecimento
  Para que o usuário possa ter acesso as informações da transação do estabelecimento
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações 

Contexto: Estar na tela de Dados Principais e Informações Adicionais
  Dado que o usuário esteja na tela de Dados Principais e Informações Adicionais

@smoke @publico @estabelecimento @estab_trans
Cenário: Aba Transação
  Quando o usuário clicar na aba transação
  E utilizar o filtro
  Então o sistema deve exibir o resultado da pesquisa com sucesso
  """
  Contrato - Produto
  """