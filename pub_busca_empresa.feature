#language:pt

Funcionalidade: Busca de 'Público' por Empresa
  Para que o usuário possa ter acesso as informações da Empresa
  Sendo um usuário devidamente cadastrado
  Possa consultar as informações por busca

Contexto: Estar na aba Público
  Dado que o usuário está na aba Público do Orbium

@smoke @publico @busca @empresa @emp_rad
Cenário: Localizar Empresa - CNPJ Radical
  Quando selecionar a opção Empresa - CNPJ Radical
  E preencher o campo com o número do CNPJ Radical da empresa
  E clicar na lupa para pesquisar CNPJ Radical
  Então o sistema deve localizar CNPJ da empresa e abrir uma tela com
  """
  Dados Principais e Informações Adicionais
  """

@smoke @publico @busca @empresa @emp_comp
Cenário: Localizar Empresa - Razão Social (nome completo)
  Quando selecionar a opção Empresa - Razão Social nome completo
  E preencher o campo com o nome completo da empresa
  E clicar na lupa para pesquisar nome completo da Empresa
  Então o sistema deve localizar o nome da Empresa e exibir
  """
  Dados Principais e Informações Adicionais
  """

@smoke @publico @busca @empresa @emp_parcial
Cenário: Localizar Empresa - Razão Social (nome parcial)
  Quando selecionar a opção Empresa - Razão Social nome parcial
  E preencher o campo com o nome parcial da empresa
  E clicar na lupa para pesquisar nome parcial da Empresa
  Então o sistema deve localizar o nome e abrir uma tela com  
  """
  Dados Principais e Informações Adicionais
  """

@smoke @publico @busca @empresa @emp_pedido
Cenário: Localizar Empresa - N° do Pedido
  Quando selecionar a opção Empresa - N° do Pedido
  E preencher o campo com o N° do Pedido
  E clicar na lupa para pesquisar pedido
  Então o sistema deve localizar o pedido e abrir uma tela com
  """
  Dados Principais e Informações Adicionais
  """

@smoke @publico @busca @empresa @emp_cesta
Cenário: Localizar Empresa - N° da Cesta
  Quando selecionar a opção Empresa - N° da Cesta
  E preencher o campo com o N° da Cesta
  E clicar na lupa para pesquisar N° Cesta
  Então o sistema deve localizar a cesta e abrir uma tela com 
  """
  Dados Principais e Informações Adicionais
  """

@smoke @publico @busca @empresa @emp_ticket
Cenário: Localizar Empresa - N° de E-Ticket
  Quando selecionar a opção Empresa - N° de E-Ticket
  E preencher o campo com o N° de E-Ticket
  E clicar na lupa para pesquisar E-Ticket
  Então o sistema deve localizar E-Ticket e abrir uma tela com
  """
  Dados Principais e Informações Adicionais
  """
@smoke @publico @busca @empresa @emp_envio
Cenário: Localizar Empresa - N° Envio
  Quando selecionar a opção Empresa - N° Envio
  E preencher o campo com o N° Envio
  E clicar na lupa para pesquisar Envio
  Então o sistema deve localizar N° Envio e abrir uma tela com
  """
  Dados Principais e Informações Adicionais
  """  

@smoke @publico @busca @empresa @emp_rps
Cenário: Localizar Empresa - N° de RPS
  Quando selecionar a opção Empresa - N° de RPS
  E preencher o campo com o N° de RPS
  E clicar na lupa para pesquisar RPS
  Então o sistema deve localizar N° de RPS e abrir uma tela com
  """
  Dados Principais e Informações Adicionais
  """    

@smoke @publico @busca @empresa @emp_contrato
Cenário: Localizar Empresa - Num do Contrato
  Quando selecionar a opção Empresa - Num do Contrato
  E preencher o campo com o Num do Contrato empresa
  E clicar na lupa para pesquisar contrato
  Então o sistema deve localizar Num do Contrato e abrir uma tela com
  """
  Dados Principais e Informações Adicionais
  """  

@smoke @publico @busca @empresa @emp_reembolso
Cenário: Localizar Empresa - Num do Reembolso
  Quando selecionar a opção Empresa - Num do Reembolso
  E preencher o campo com o Numero de Reembolso
  E clicar na lupa para pesquisar Reembolso
  Então o sistema deve localizar Num do Reembolso e abrir uma tela com  
  """
  Dados Principais e Informações Adicionais
  """      