#language:pt

Funcionalidade: Busca de Atendimento por Opções
  Como um usuário do Orbium
  Quero realizar a busca de Atendimento 
  Para consultar as informações do Atendimento

Contexto: Estar na aba Atendimentos
  Dado que o usuário está na aba Atendimentos do Orbium

@smoke @atendimento @aten_busca @busca_email
Cenário: Localizar Atendimento por Email
  Quando selecionar a opção Endereço de e-mail do cliente
  E preencher o campo com o e-mail do cliente
  E clicando na lupa de pesquisar
  Então o sistema deve localizar o e-mail e exibir a tela
  """
  Dados Principais
  """

@smoke @atendimento @aten_busca @busca_historico
Cenário: Localizar Atendimento por Histórico de Emails
  Quando selecionar a opção Histórico de emails: campo assunto
  E preencher o campo com o assunto
  E clicando na lupa de pesquisar assunto
  Então o sistema deve localizar o assunto e exibir a tela
  """
  Dados Principais
  """  

@smoke @atendimento1 @aten_busca @busca_fila_rem
Cenário: Localizar Atendimento por Fila de Emails Recebidos - Remetente
  Quando selecionar a opção Fila de emails recebidos: campo remetente
  E clicando na lupa para pesquisar Remetente
  Então o sistema deve localizar o atendimento por remetente e exibir
  """
  Atender
  """ 

@smoke @atendimento1 @aten_busca @busca_fila_assun
Cenário: Localizar Atendimento por Fila de Emails Recebidos - Assunto
  Quando selecionar a opção Fila de emails recebidos: campo assunto
  E clicando na lupa de pesquisar Assunto
  Então o sistema deve localizar o atendimento por assunto e exibir
  """
  Atender
  """

@smoke @atendimento1 @aten_busca @busca_fila_fichas
Cenário: Localizar Atendimento por Fila de Fichas: Campanha manual
  Quando selecionar a opção Fila de fichas: Campanha Manual
  E selecionar ficha no campo Selecione
  E clicando na lupa de pesquisar
  Então o sistema deve localizar a ficha e exibir a tela
  """
  Dados Principais
  """

@smoke @atendimento @aten_busca @busca_hist_data
Cenário: Localizar Atendimento por Historico por Data
  Quando selecionar a opção Histórico: por data
  E selecionar período Inicial até Fim
  E clicando na lupa para pesquisar por data
  Então o sistema deve localizar o periodo e exibir a tela
  """
  Dados Principais
  """ 

@smoke @atendimento @aten_busca @busca_meu_hist
Cenário: Localizar Atendimento por Meu Histórico por data
  Quando selecionar a opção Meu Histórico: Por data
  E selecionar período De Inicio até Fim
  E clicando na lupa para pesquisa Historico 
  Então o sistema deve localizar o periodo do Histórico e exibir a tela
  """
  Dados Principais
  """

@smoke @atendimento1 @aten_busca @busca_hist_emails
Cenário: Localizar Atendimento por Histórico de emails atendidos
  Quando selecionar a opção Históricos de emails atendidos: Sem resposta por data
  E selecionar o período De Inicio até Fim
  E clicando na lupa de pesquisar
  Então o sistema deve localizar o periodo do Histórico do email e exibir a tela
  """
  Dados Principais
  """                      

@smoke @atendimento @aten_busca @busca_teste
Cenário: Localizar Atendimento por Teste
  Quando selecionar a opção Teste
  E clicando na lupa de pesquisar Teste
  Então o sistema deve localizar o Atendimento por teste e exibir a tela
  """
  Dados Principais
  """  