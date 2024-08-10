#language:pt

Funcionalidade: Busca de Protocolo 
  Como um usuário do Orbium
  Quero realizar a busca de Protocolo
  Para consultar as informações 

Contexto: Estar na aba Solucionadora
  Dado que o usuário está na aba Solucionadora do Orbium

@smoke @solucionadora @solu_consul @consul_cnpj
Cenário: Localizar Protocolo por CNPJ
  Quando selecionar a opção CNPJ 
  E preencher o campo com o CNPJ
  E clicando na lupa de pesquisar protocolo
  Então o sistema deve localizar CNPJ e abrir uma tela com 
  """
  Dados Principais
  """

@smoke @solucionadora @solu_consul @consul_proto
Cenário: Localizar Protocolo por n° Protocolo
  Quando selecionar a opção de Protocolo
  E preencher o campo com N° Protocolo
  E clicando na lupa de pesquisar protocolo
  Então o sistema deve localizar Protocolo e abrir uma tela com 
  """
  Dados Principais
  """  

@smoke @solucionadora @solu_consul @consul_cnpj_inval
Cenário: Localizar Protocolo por CNPJ inválido
  Quando selecionar opção CNPJ
  E preencher o campo com CNPJ inválido
  E clicando na lupa de pesquisar o protocolo
  Então o sistema deve exibir a mensagem 
  """
  Total de registros: 0
  """  

@smoke @solucionadora @solu_consul @consul_proto_inval
Cenário: Localizar Protocolo por N° Protocolo Inválido
  Quando selecionar a opção de Protocolo
  E preencher o campo com N° Procolo inválido
  E clicando na lupa para pesquisar o protocolo
  Então o sistema deve exibir na mensagem 
  """
  Total de registros: 0
  """   