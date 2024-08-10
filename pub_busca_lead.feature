#language:pt
Funcionalidade: Busca de 'Público' por Lead 
  Para que o usuário possa ter acesso as informações da Empresa
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @busca @lead @lead_cnpj 
Cenário: Localizar Lead - CNPJ
  Quando selecionar a opção Lead - CNPJ
  E preencher o campo com o número do CNPJ Lead
  E clicar na lupa de pesquisa
  Então o sistema deve localizar CNPJ e abrir uma tela com 
  """
  Dados Principais e as Informações Adicionais
  """
  

@smoke @publico @busca @lead @lead_rad
Cenário: Localizar Lead - CNPJ Radical
  Quando selecionar a opção Lead - CNPJ Radical
  E preencher o campo com o número do CNPJ Radical do Lead
  E clicar na lupa de pesquisa 
  Então o sistema deve localizar CNPJ Radical e exibir
  """
  Dados Principais e as Informações Adicionais
  """  

@smoke @publico @busca @lead @lead_parcial
Cenário: Localizar Lead - Razão Social (nome parcial)
  Quando selecionar a opção Lead - Razão Social nome parcial
  E preencher o campo com o nome parcial do Lead
  E clicar na lupa para pesquisar nome parcial de lead
  Então o sistema deve localizar Razão do lead e abrir uma tela com
  """
  Dados Principais e as Informações Adicionais
  """

@smoke @publico @busca @lead @lead_completo
Cenário: Localizar Lead - Razão Social (nome completo)
  Quando selecionar a opção Lead - Razão Social nome completo
  E preencher o campo com o nome completo do Lead
  E clicar na lupa para pesquisar nome completo de lead
  Então o sistema deve localizar Razão e abrir uma tela com
  """
  Dados Principais e as Informações Adicionais
  """