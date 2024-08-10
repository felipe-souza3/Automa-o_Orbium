#language:pt

Funcionalidade: Funções na tela da aba Today
  Como um usuário do Orbium
  Quero acessar a aba Today
  Para utilizar as funções da tela

Contexto: Estar na aba Today  
  Dado que o usuário esteja na Aba Today

@smoke @today @funcoes @item_recen
Cenário: Itens Recentes
    Quando clicar na opção Itens Recentes
    Então o sistema exibir grid com o texto a cima
     """
     seus itens visualizados recentemente
     """

@smoke @today @funcoes @taref_nova
Cenário: Nova Tarefa
    Quando clicar no Icone de estrela 
    E preencher os campos tarefa e observação
    E preencher vencimento daqui a 20 minutos
    E clicar no botão gravar
    Então o sistema deve gravar e fechar a tarefa e exibir
    """
    minhas tarefas
    """

@smoke @today @funcoes @mtaref_pesq
Cenário: Minhas Tarefas - Pesquisa
    Quando pesquisar por Tarefa Teste no campo de pesquisa Minha Tarefa
    E clicar na lupa de pesquisar tarfa
    Então o sistema deve exibir a tarefa pesquisada no grid    
    """
    Tarefa Teste
    """    

@smoke @today @funcoes @mtaref_sele
Cenário: Minhas Tarefas - Selecionar Tarefa
    Quando pesquisar por Tarefa Teste no campo de pesquisa Minha Tarefa
    E clicar na lupa de pesquisar tarfa
    E clicar na Tarefa pesquisada
    Então o sistema deve abrir popup com informações da tarefa e exibir
    """
    Tarefa Teste
    """      

@smoke @today @funcoes @mtaref_encer
Cenário: Minhas Tarefas - Encerrar Tarefa 
    Quando pesquisar por Tarefa Teste no campo de pesquisa Minha Tarefa
    E clicar na lupa de pesquisar tarfa
    E clicar na Tarefa pesquisada
    E clicar no botão Encerrar Tarefa
    Então o sistema deve encerrar tarefa e exibir
    """
    Minhas Tarefas
    """

@smoke @today @funcoes @opcoes
Cenário: Opções - Today
    Quando clicar em Opções
    Então o sistema deve exibir dois menus 

@smoke @today @funcoes @opc_senha_tela
Cenário: Opções - Tela trocar a senha de acesso
    Quando clicar em Opções
    E clicar na opção Trocar a senha de acesso
    Então o sistema deve abrir tela alterar sua senha     
    """
    Alterar sua senha
    """

@smoke @today @funcoes @opc_senha_alt
Cenário: Opções - Trocar a senha de acesso 
    Quando clicar em Opções
    E clicar na opção Trocar a senha de acesso
    E preencher campos senha atual e senha nova
    E clicar o botão gravar senha
    Então o sistema deve encerrar e direcionar para tela principal 
    """
    atendimento
    """   

@smoke @today @funcoes @opc_moni
Cenário: Opções - Monitoração
    Quando clicar em Opções
    E clicar na opção Monitoração
    Então o sistema deve abrir tela Monitoração visão geral 
    """
    monitoração: visão geral
    """   

@smoke @today @funcoes @opc_moni_fech
Cenário: Opções - Monitoração - Fechar
    Quando clicar em Opções
    E clicar na opção Monitoração
    E clicar no botão voltar Monitoração
    Então o sistema deve fechar tela Monitoração visão geral  

@smoke @today @funcoes @today_casos
Cenário: Today - Casos
    Quando clicar no botão Dados da aba Casos
    Então o sistema deve abrir tela com opçães do dados com total
    """
    total
    """