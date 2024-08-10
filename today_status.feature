#language:pt

Funcionalidade: Validar status da aba today
  Como um usuário do Orbium
  Quero acessar a aba today
  Para realizar a alteração de status do atendente

Contexto: Estar na aba Today
  Dado que o usuário esteja na Aba Today

@smoke @today @status @status_disp
Cenário: Status - Disponível
  Quando alterar status do chat para Disponivel
  Então o sistema deve mostrar cor de status verde 
  
@smoke @today @status @status_indisp
Cenário: Status - Indisponível
  Quando  alterar status do chat para Indisponível
  Então o sistema deve mostrar cor de status vermelho 

@smoke @today @status @status_ambu
Cenário: Status - Ambulatório
  Quando alterar status do chat para Ambulatório
  Então o sistema deve mostrar cor de status vermelho  

@smoke @today @status @status_banh
Cenário: Status - Banheiro
  Quando alterar status do chat para Banheiro
  Então o sistema deve mostrar cor de status vermelho 

@smoke @today @status @status_nr17
Cenário: Status - Descanso NR17
  Quando alterar status do chat para Descanso NR17
  Então o sistema deve mostrar cor de status vermelho      

@smoke @today @status @status_feedb
Cenário: Status - Feedback
  Quando alterar status do chat para Feedback
  Então o sistema deve mostrar cor de status vermelho     

@smoke @today @status @status_lig
Cenário: Status - Ligação Ativa
  Quando alterar status do chat para Ligação Ativa
  Então o sistema deve mostrar cor de status vermelho    

@smoke @today @status @status_outras
Cenário: Status - Outras Atividades
  Quando alterar status do chat para Outras Atividades
  Então o sistema deve mostrar cor de status vermelho     

@smoke @today @status @status_reuniao
Cenário: Status - Reunião
  Quando alterar status do chat para Reunião
  Então o sistema deve mostrar cor de status vermelho     

@smoke @today @status @status_sist
Cenário: Status - Sistema
  Quando alterar status do chat para Sistema
  Então o sistema deve mostrar cor de status vermelho    

@smoke @today @status @status_trein
Cenário: Status - Treinamento
  Quando alterar status do chat para Treinamento
  Então o sistema deve mostrar cor de status vermelho   

@smoke @today @status @status_lanche
Cenário: Status - Lanche
  Quando  alterar status do chat para lanche
  Então o sistema deve mostrar cor de status vermelho    