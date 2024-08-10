Quando('clicar na opção Itens Recentes') do
    @page.call(TodayFuncoesPage).go_itens
end

  
Então('o sistema exibir grid com o texto a cima') do |expect_message|
    within($div_itens) do
        expect(page).to have_content expect_message
    end
end

#nova_tarefa
Quando('clicar no Icone de estrela') do
    @page.call(TodayFuncoesPage).go_tarefa
end
  
E('preencher os campos tarefa e observação') do
    @page.call(TodayFuncoesPage).tarefa_put
end
  
E('preencher vencimento daqui a 20 minutos') do 
    @page.call(TodayFuncoesPage).tarefa_venc
end
  
E('clicar no botão gravar') do
    @page.call(TodayFuncoesPage).tarefa_gravar
end
  
Então('o sistema deve gravar e fechar a tarefa e exibir') do |expect_message|
    within($div_tarefa) do
        expect(page).to have_content expect_message
    end
end

#Minhas Tarefas - Pesquisa
Quando('pesquisar por Tarefa Teste no campo de pesquisa Minha Tarefa') do
    @page.call(TodayFuncoesPage).tarefa_pesq
end

E('clicar na lupa de pesquisar tarfa') do
    @page.call(TodayFuncoesPage).tarefa_lupa
end

Então('o sistema deve exibir a tarefa pesquisada no grid') do |expect_message|
    within($div_tarefa2) do
        expect(page).to have_content expect_message
    end
end

#m_tarefas_selecionar
E('clicar na Tarefa pesquisada') do
    @page.call(TodayFuncoesPage).go_tarefa_sel
end

Então('o sistema deve abrir popup com informações da tarefa e exibir') do |expect_message|
    within($div_tarefa3) do
        expect(page).to have_content expect_message
    end
end

#m_tarefas_fechar
E('clicar no botão Encerrar Tarefa') do
    @page.call(TodayFuncoesPage).fechar_tarefa
end

Então('o sistema deve encerrar tarefa e exibir') do |expect_message|
    within($div_tarefa) do
        expect(page).to have_content expect_message
    end
end

#opcoes
Quando('clicar em Opções') do
    @page.call(TodayFuncoesPage).go_opcoes
end
  
Então('o sistema deve exibir dois menus')do
    within($div_senha) do
        expect(page).to have_xpath($btn_troca_senha)
    end
end

#trocar_senha_tela
E('clicar na opção Trocar a senha de acesso') do
    @page.call(TodayFuncoesPage).go_troca_senha
end
  
Então('o sistema deve abrir tela alterar sua senha') do |expect_message|
    within($div_alt_senha) do
        expect(page).to have_content expect_message
    end
end

#trocar_senha
E('preencher campos senha atual e senha nova') do
    @page.call(TodayFuncoesPage).put_troca_senha
end
  
E('clicar o botão gravar senha') do
    @page.call(TodayFuncoesPage).grava_troca_senha
end
  
Então('o sistema deve encerrar e direcionar para tela principal') do |expect_message|
    within($div_atendimentos) do
        expect(page).to have_content expect_message
    end
end

#trocar_senha_logar
Dado('que esteja na tela de login') do
    @page.call(CommonPage).go
end
  
Quando('logar com usuário e nova senha') do
    @page.call(TodayFuncoesPage).logar_nova_senha
end
  

Então('o sistema deve logar com sucesso') do
    expect(page).to have_xpath '/html/body/nav/div/div[1]/a/img'
end

#opcoes_monitoracao
Quando('clicar na opção Monitoração') do
    @page.call(TodayFuncoesPage).go_monito
end
  
Então('o sistema deve abrir tela Monitoração visão geral') do |expect_message|
    within($div_monito) do
        expect(page).to have_content expect_message
    end
end
#fechar_monitoração

E('clicar no botão voltar Monitoração') do
    @page.call(TodayFuncoesPage).fecha_monito 
end

Então('o sistema deve fechar tela Monitoração visão geral') do 
    within($div_monito) do
        expect(page).to have_no_xpath($monito_tela) 
    end
end

#casos_dados
Quando('clicar no botão Dados da aba Casos') do
    @page.call(TodayFuncoesPage).go_dados
end

Então('o sistema deve abrir tela com opçães do dados com total') do |expect_message|
    within($div_dados) do
        expect(page).to have_content expect_message
    end
end
