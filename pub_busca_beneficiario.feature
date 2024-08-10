#language:pt
Funcionalidade: Busca de 'Público' por Beneficiário
  Para que o usuário possa ter acesso as informações do beneficiário
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @busca @busca_benef
Cenário: Localizar Beneficiário
  Quando selecionar a opção Beneficiário - Número do Cartão 
  E preencher o campo com o número do cartão
  E clicar na lupa para pesquisar
  Então o sistema deve localizar beneficiário e exibir
  """
  Dados Principais e Informações Adicionais
  """ 
  