#language:pt

Funcionalidade: Funções na tela da aba Today
  Como um usuário do Orbium
  Quero acessar a aba Today
  Para utilizar as funções da tela
  
@smoke @today @funcoes @opc_senha_logar
Cenário: Opções - Trocar a senha de acesso - Logar com nova senha 
    Dado que esteja na tela de login
    Quando logar com usuário e nova senha 
    Então o sistema deve logar com sucesso