#language:pt

Funcionalidade: Chat de conversação
  Como um usuário do Orbium
  Quero acessar a aba today
  Para utilizar o chat de conversação

  Dado que o usuário esteja na Aba Today

@smoke @today @chat @chat_icon
Cenário: Ícone Chat
    Dado que o usuário esteja na Aba Today
    Quando clicar no botão chat
    Então o sistema deve exibir tela com 
  """
  Conversações
  """
    

@smoke @today @chat @chat_abrir
Cenário: Abrir nova conversação
  Dado que o usuário esteja na tela Conversações
  Quando clicar no botão Criar Nova conversação
  Então o sistema deve exibir em tela o texto de
  """
  Nova Conversação
  """

@smoke @today @chat @chat_criar
Cenário: Criando nova conversação
  Dado que o usuário esteja na tela Conversações
  Quando clicar no botão Criar Nova conversação
  E digitar teste
  E clicar no botão enviar
  Então o sistema deve exibir historico de conversa 
  """
  Conversa 'teste'
  """  

@smoke @today @chat @chat_alterar
Cenário: Alterando nova conversação
  Dado que o usuário esteja com a nova conversa aberta 
  Quando clicar na opção Alterar no lado do nome do usuario 
  Então o sistema deve exibir opção
  """
  Defina aqui quais usuários poderão ler as mensagens
  """    
@smoke @today @chat @chat_incl
Cenário: Incluir usuáruio na nova conversa
  Dado que o usuário esteja com a nova conversa aberta 
  Quando clicar na opção Alterar no lado do nome do usuario 
  E selecionar um grupo 
  E selecionar um usuario desse grupo e clicar na seta para frente
  Então o sistema deve incluir usuario selecionado na conversa fazendo o icone do chat piscar com a cor laranja 

@smoke @today @chat @chat_alt_lar
Cenário: Histórico de usuários adicionados
  Dado que o usuário esteja na tela de alteração do novo chat
  Quando clicar no chat piscante na cor laranja  
  Então o sistema deve exibir no historico o usuario adicionado  

@smoke @today @chat @chat_hist
Cenário: Histórico da nova conversa
  Dado que o usuário esteja com a nova conversa aberta
  Quando clicar na opção Historico  
  Então o sistema deve exibir no historico da conversa o texto
  """
  Histórico da conversa
  """  

@smoke @today @chat @chat_hist_fech
Cenário: Fechar Histórico da nova conversa
  Dado que o usuário esteja com a nova conversa aberta
  Quando clicar na opção Historico 
  E clicar na opção Voltar do histórico
  Então o sistema deve ocutar historico 
  """
  Conversa 'Teste'
  """ 

@smoke @today @chat @chat_excluir
Cenário: Exclusão da nova conversa
  Dado que o usuário esteja com a nova conversa aberta
  Quando clicar na opção Excluir Conversa 
  Então o sistema excluir do grid da Conversações

     