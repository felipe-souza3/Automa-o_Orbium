Quando('clicar no botão chat') do
    @page.call(TodayChatPage).go_chat
end
  
Então('o sistema deve exibir tela com') do |expect_message|
    within($div_chat) do
        expect(page).to have_content expect_message
    end
end

#abrindo_chat
Dado('que o usuário esteja na tela Conversações') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(TodayStatusPage).go_today
    @page.call(TodayChatPage).go_chat
end
  
Quando('clicar no botão Criar Nova conversação') do
    @page.call(TodayChatPage).go_openchat
end
  
Então('o sistema deve exibir em tela o texto de') do |expect_message|
    within($div_newchat) do
        expect(page).to have_content expect_message
    end
end

#criando_chat
E('digitar teste') do
    @page.call(TodayChatPage).go_newchat
end
  
E('clicar no botão enviar') do
    @page.call(TodayChatPage).enviar_chat
end
  
Então('o sistema deve exibir historico de conversa') do |expect_message|
    within($div_newchat) do
        expect(page).to have_content expect_message
    end
end

#alteracao_chat
Dado('que o usuário esteja com a nova conversa aberta') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(TodayStatusPage).go_today
    @page.call(TodayChatPage).go_chat
    @page.call(TodayChatPage).go_openchat
    @page.call(TodayChatPage).go_newchat
    @page.call(TodayChatPage).enviar_chat
end
  
Quando('clicar na opção Alterar no lado do nome do usuario') do
    @page.call(TodayChatPage).go_altchat
end
  
Então('o sistema deve exibir opção') do |expect_message|
    within($alt_div) do
        expect(page).to have_content expect_message
    end
end

#chat_incluir usuario
E('selecionar um grupo') do
    @page.call(TodayChatPage).select_gp
end
  
E('selecionar um usuario desse grupo e clicar na seta para frente') do
    @page.call(TodayChatPage).select_user
end
  
Então('o sistema deve incluir usuario selecionado na conversa fazendo o icone do chat piscar com a cor laranja') do
    within($div_laranja) do
        expect(page).to have_xpath($chat_laranja) 
    end
end

#historico_usuario
Dado('que o usuário esteja na tela de alteração do novo chat') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(TodayStatusPage).go_today
    @page.call(TodayChatPage).go_chat
    @page.call(TodayChatPage).go_openchat
    @page.call(TodayChatPage).go_newchat
    @page.call(TodayChatPage).enviar_chat
    @page.call(TodayChatPage).go_altchat
    @page.call(TodayChatPage).select_gp
    @page.call(TodayChatPage).select_user
    
end
  
Quando('clicar no chat piscante na cor laranja') do
    @page.call(TodayChatPage).go_chat_lar
end
  
Então('o sistema deve exibir no historico o usuario adicionado') do
    within($div_hist) do
        expect(page).to have_xpath($hist_usuario) 
    end
end

#historico_chat
Quando('clicar na opção Historico') do
    @page.call(TodayChatPage).go_chat_hist
end
  
Então('o sistema deve exibir no historico da conversa o texto') do |expect_message|
    within($div_chat_hist) do
        expect(page).to have_content expect_message
    end
end

#historico_fechar
E('clicar na opção Voltar do histórico') do
    @page.call(TodayChatPage).go_hist_volt
end

Então('o sistema deve ocutar historico') do |expect_message|
    within($chat_div) do
        expect(page).to have_content expect_message
    end
end

#nova_conversa_excluir
Quando('clicar na opção Excluir Conversa') do
    @page.call(TodayChatPage).excl_chat
end
  
  
Então('o sistema excluir do grid da Conversações') do 
    within($chat_div) do
        expect(page).to have_no_xpath($hist_usuario) 
    end
end
  