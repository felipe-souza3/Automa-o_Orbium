#language:pt

Funcionalidade: Informações da tela Protocolo 
  Como um usuário do Orbium
  Quero realizar consulta de Protocolo
  Para realizar as funções na tela de Protocolo 

Contexto: Estar na tela de Protocolo
  Dado que o usuário esteja na tela de Protocolo

@smoke @solucionadora @solu_proto @anotacoes
Cenário: Protocolo - Anotações 
  Quando clicar na aba Anotações
  Então o sistema deve abrir a tela Anotações com
  """
  Nova Anotação
  """

@smoke @solucionadora @solu_proto @nova_anot
Cenário: Protocolo - Anotações - Nova Anotação
  Quando clicar na aba Anotações
  E o usuário realizar uma nova anotação
  E clicar em Gravar
  Então o sistema deve exibir no grid anotações
  """
  teste anotação
  """ 

@smoke @solucionadora @solu_proto @nova_anot_fecha
Cenário: Protocolo - Anotações - Nova Anotação/Fechar 
  Quando clicar na aba Anotações
  E clicar em Fechar
  Então o sistema deve voltar para a tela de protocolo
  """
  Dados Principais (modo: workflow)
  """  

@smoke @solucionadora @solu_proto @proto_anexos
Cenário: Protocolo - Anexos
  Quando clicar na aba Anexos
  Então o sistema deve exibir a tela de Anexos com
  """
  Adicionar novo arquivo ao caso
  """   

@smoke @solucionadora @solu_proto @proto_hist
Cenário: Protocolo - Histórico
  Quando clicar na aba de Histórico
  Então o sistema deve exibir a tela de Históricos
  """
  Histórico
  """     

@smoke @solucionadora @solu_proto @proto_hist_fecha
Cenário: Protocolo - Histórico/Fechar
  Quando clicar na aba de Histórico
  E clicar no botão fechar histórico
  Então o sistema deve voltar para na tela de protocolo
  """
  Dados Principais (modo: workflow)
  """

@smoke @solucionadora @solu_proto @proto_fecha
Cenário: Protocolo - Fechar
  Quando clicar na aba Fechar
  Então o sistema deve voltar para a tela de busca de protocolo
  """
  Busca de "Atendimentos"
  """  