#language:pt

Funcionalidade: Informações do Novo Chat na tela Protocolo 
  Como um usuário do Orbium
  Quero acessar a tela do Novo Chat em Protocolo
  Para realizar as funções na tela

Contexto: Estar na tela de Protocolo
  Dado que o usuário esteja na tela de Protocolo

@smoke @solucionadora @solu_chat @chat
Cenário: Novo chat
  Quando clicar no link  novo chat
  Então o sistema deve abrir outra tela com informações sobre o chat 
  """
  Dados Principais
  """

@smoke @solucionadora @solu_chat @nchat_rotear
Cenário: Novo chat - Rotear
  Quando clicar no link  novo chat
  E clicar no botão rotear
  Então o sistema deve abrir tela com
  """
  Histórico dos Roteamentos
  """ 

@smoke @solucionadora @solu_chat @nchat_rotear_fechar
Cenário: Novo chat - Rotear/Fechar
  Quando clicar no link  novo chat
  E clicar no botão rotear
  E clicar no botão para fechar
  Então o sistema deve volta para a tela com
  """
  Dados Principais
  """   

@smoke @solucionadora @solu_chat @nchat_transc
Cenário: Novo chat - Transcrição
  Quando clicar no link  novo chat
  E clicar no botão transcrição
  E clicar no botão do ok
  Então o sistema exibe mensagem  
  """
  Email enviado com sucesso
  """  

@smoke @solucionadora @solu_chat @nchat_casos
Cenário: Novo chat - Casos
  Quando clicar no link  novo chat
  E clicar no botão casos 
  Então o sistema exibe tela com casos relacionados ao atentimento   
  """
  Casos relacionados ao atendimento
  """   

@smoke @solucionadora @solu_chat @nchat_casos_fecha
Cenário: Novo chat - Casos/Fechar
  Quando clicar no link  novo chat
  E clicar no botão casos 
  E clicar no botão fechar casos
  Então o sistema deve voltar para a tela informação do novo chat  
  """
  Dados Principais
  """ 

@smoke @solucionadora @solu_chat @nchat_papeis
Cenário: Novo chat - Papeis
  Quando clicar no link  novo chat
  E clicar no botão papeis
  Então o sistema exibe tela novo papeis do cliente  
  """
  Novo Papel do cliente
  """   

@smoke @solucionadora @solu_chat @nchat_papeis_fecha
Cenário: Novo chat - Papeis/Fechar
  Quando clicar no link  novo chat
  E clicar no botão papeis
  E clicar no botão fechar papeis
  Então o sistema deve voltar a tela informação do novo chat
  """
  Dados Principais
  """

@smoke @solucionadora @solu_chat @nchat_hist
Cenário: Novo chat - Histórico
  Quando clicar no link  novo chat
  E clicar na aba histórico
  Então  o sistema deve trazer os registros
  """
  Nenhum registro encontrado
  """ 

@smoke @solucionadora @solu_chat @nchat_hist_fecha
Cenário: Novo chat - Histórico/Fechar
  Quando clicar no link  novo chat
  E clicar na aba histórico
  E clicar no botão fechar historico
  Então o sistema deve fechar tela e voltar para a tela 
  """
  Dados Principais 
  """     
@smoke @solucionadora @solu_chat @nchat_fecha
Cenário: Novo chat
  Quando clicar no link  novo chat
  E clicar no botão fechar chat
  Então o sistema deve voltar a tela de 
  """
  Dados Principais (modo:workflow)
  """