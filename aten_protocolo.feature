#language:pt

Funcionalidade: Busca de Atendimento por Protocolo
  Como um usuário do Orbium
  Quero realizar a busca de Atendimento por Protocolo
  Para consultar as informações do Atendimento

Contexto: Estar na aba Atendimentos
  Dado que o usuário está na aba Atendimentos do Orbium

@smoke @atendimento @protocolo @proto_busca
Cenário: Localizar Atendimento por Protocolo
  Quando selecionar a opção Protocolo 
  E preencher o campo com o número do Protocolo
  E clicando na lupa para pesquisar
  Então o sistema deve localizar protocolo e exibir a tela
 

@smoke @atendimento @protocolo @proto_dados
Cenário: Protocolo - Dados Principais
  Quando o Protocolo for preenchido 
  E clicando na lupa para pesquisar
  Então o sistema deve localizar o protocolo e exibir a tela
  """
  Dados Principais
  """ 

@smoke @atendimento @protocolo @proto_formu
Cenário: Protocolo - Aba Formulários
  Quando realizar a busca por Protocolo 
  E clicar na aba Formulários
  Então o sistema deve e exibir a tela
  """
  Exibir fomrulários/casos que podem ser preenchidos
  """  

@smoke @atendimento @protocolo @proto_casos
Cenário: Protocolo - Aba Casos
  Quando realizar a busca por Protocolo 
  E clicar na aba Casos
  Então o sistema deve exibir o texto
  """
  Casos relacionados ao atendimento
  """      

@smoke @atendimento @protocolo @proto_artigos
Cenário: Protocolo - Aba Artigos
  Quando realizar a busca por Protocolo 
  E clicar na aba Artigos
  Então o sistema deve exibir em tela o texto
  """
  Busca de Biblioteca
  """ 

@smoke @atendimento @protocolo @proto_papeis
Cenário: Protocolo - Aba Papéis
  Quando realizar a busca por Protocolo 
  E clicar na aba Papéis
  Então o sistema deve exibir na tela o texto 
  """
  Novo papel do cliente
  """ 

@smoke @atendimento @protocolo @proto_histo
Cenário: Protocolo - Aba Histórico
  Quando realizar a busca de Protocolo 
  E clicar na aba Histórico
  Então o sistema deve exibir o registro de chamadas e
  """
  Descrição
  """ 

@smoke @atendimento @protocolo @proto_camp
Cenário: Protocolo - Aba Campanha
  Quando realizar a busca por Protocolo 
  E clicar na aba Campanha
  Então o sistema deve exibir a tela 
  """
  Campanhas disponíveis para inserção manual
  """ 

@smoke @atendimento @protocolo @proto_fechar
Cenário: Protocolo - Botão fechar
  Quando realizar a busca por Protocolo 
  E clicar no botão fechar
  Então o sistema deve voltar para a tela de
  """
  Busca de "Atendimentos" 
  """         