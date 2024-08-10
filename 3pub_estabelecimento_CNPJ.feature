#language:pt
#encoding:utf-8

Funcionalidade: Busca de 'Público' por Estabelecimento CNPJ
  Para que o usuário possa ter acesso as informações do Estabelecimento
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @estabelecimento @estab_cnpj @ativo
Cenário: Localizar CNPJ
  Quando o usuário realizar a busca por Estabelecimento CNPJ
  E inserir o CNPJ 
  Então o sistema deve exibir o nome do estabelecimento 
  """
  CAFE BAR E RESTAURANTE W A LTDA
  """
   #nome do estabelecimento


@smoke @publico @estabelecimento @estab_inf @ativo
Cenário: Validar Dados Principais e Informações Adicionais
  Quando o usuário realizar a busca por Estabelecimento CNPJ
  E inserir o CNPJ 
  Então o sistema deve exibir "Dados Principais e Informações Adicionais"


@smoke @publico @estabelecimento @estab_custom @ativo
Cenário: Aba Customização
  Quando o usuário realizar a busca por Estabelecimento CNPJ
  E inserir o CNPJ
  Então a aba "Customização" deve ser exibida na tela

