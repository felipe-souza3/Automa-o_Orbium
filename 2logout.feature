#language:pt

Funcionalidade: Deslogar do Orbium 
  Como um usuário do Orbium
  Quero realizar o logoff do sistema
  Para sair do Orbium

Contexto: Estar na aba Today
  Dado que o usuário esteja na Aba Today

@smoke @today @logout @ativo
Cenário: Sair do Orbium
  Quando clicar no botão desligar
  Então o sistema deve voltar para a tela de login
  """
  Login - Orbium Desktop 5
  """