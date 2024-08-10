#status_disponivel
Dado('que o usuário esteja na Aba Today') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(TodayStatusPage).go_today
end
  
Quando('alterar status do chat para Disponivel') do
    @page.call(TodayStatusPage).sta_disp
end
  
Então('o sistema deve mostrar cor de status verde') do
    within($div_status) do
        expect(page).to have_xpath($icn_disp)
    end
end

#status_indisponivel
Quando('alterar status do chat para Indisponível') do
    @page.call(TodayStatusPage).sta_ind
end
  
Então('o sistema deve mostrar cor de status vermelho') do
    within($div_status) do
        expect(page).to have_xpath($icn_ind)
    end
end

#status_ambulatorio
Quando('alterar status do chat para Ambulatório') do
    @page.call(TodayStatusPage).sta_ambu
end

#status_banheiro
Quando('alterar status do chat para Banheiro') do
    @page.call(TodayStatusPage).sta_banh
end

#status_nr17
Quando('alterar status do chat para Descanso NR17') do 
    @page.call(TodayStatusPage).sta_nr17
end

#status_feedback
Quando('alterar status do chat para Feedback') do
    @page.call(TodayStatusPage).sta_feedb
end

#status_ligacao_ativa
Quando('alterar status do chat para Ligação Ativa') do
    @page.call(TodayStatusPage).sta_lig
end

#status_outras
Quando('alterar status do chat para Outras Atividades') do
    @page.call(TodayStatusPage).sta_outras
end

#status_reuniao
Quando('alterar status do chat para Reunião') do
    @page.call(TodayStatusPage).sta_reun
end 

#status_sistema
Quando('alterar status do chat para Sistema') do
    @page.call(TodayStatusPage).sta_sist
end

#status_treinamento
Quando('alterar status do chat para Treinamento') do
    @page.call(TodayStatusPage).sta_trei
end

#status_lanche
Quando ('alterar status do chat para lanche') do
    @page.call(TodayStatusPage).sta_lanche
end





