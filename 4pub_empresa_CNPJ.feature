#language:pt

Funcionalidade: Busca de 'Público' por Empresa CNPJ
  Para que o usuário possa ter acesso as informações da Empresa
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @empresa @emp_cnpj
Cenário: Localizar CNPJ
  Quando selecionar a opção Empresa - CNPJ
  E Preencher o campo com o número do CNPJ
  E clicar na lupa para pesquisar
  Então o sistema deve localizar CNPJ e abrir uma tela com 
  """
  TICKET SERVICOS SA...          
  """


@smoke @publico @empresa @emp_dados
Cenário: Dados Principais e Informações Adicionais
  Quando selecionar a opção Empresa - CNPJ
  E Preencher o campo com o número do CNPJ
  E clicar na lupa para pesquisar
  Então sistema deve exibir na tela 
  """
  Dados Principais e as Informações Adicionais
  """
@smoke @publico @empresa @emp_custom
Cenário: Aba Customização
  Quando selecionar a opção Empresa - CNPJ
  E Preencher o campo com o número do CNPJ
  E clicar na lupa para pesquisar
  Então o sistema vai exibir em tela
  """
  Customização
  """