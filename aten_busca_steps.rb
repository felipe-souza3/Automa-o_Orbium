Quando('selecionar a opção Endereço de e-mail do cliente') do
    @page.call(AtenBuscaPage).selecionar_email
end
  
E('preencher o campo com o e-mail do cliente') do
    @page.call(AtenBuscaPage).insere_email
end
  
E('clicando na lupa de pesquisar') do
    @page.call(AtenBuscaPage).lupa_atendbusca
end
  
Então('o sistema deve localizar o e-mail e exibir a tela') do |expect_message|
    within($div_email) do 
     expect(page).to have_content expect_message
    end
end

#historico_emails_assunto
Quando('selecionar a opção Histórico de emails: campo assunto') do
    @page.call(AtenBuscaPage).selecionar_hist
end
  
E('preencher o campo com o assunto') do
    @page.call(AtenBuscaPage).insere_hist
end

E('clicando na lupa de pesquisar assunto') do
    @page.call(AtenBuscaPage).lupa_busca_hist
end

Então('o sistema deve localizar o assunto e exibir a tela') do |expect_message|
    within($div_email) do 
     expect(page).to have_content expect_message
    end
end

#fila_emails_remetente
Quando('selecionar a opção Fila de emails recebidos: campo remetente') do
    @page.call(AtenBuscaPage).selecionar_fila_reme
    @page.call(AtenBuscaPage).insere_fila_reme
end

E('clicando na lupa para pesquisar Remetente') do
    @page.call(AtenBuscaPage).lupa_fila_reme
end

Então('o sistema deve localizar o atendimento por remetente e exibir') do |expect_message|
    within($div_atender) do 
     expect(page).to have_content expect_message
    end
end

#fila_emails_assunto
Quando('selecionar a opção Fila de emails recebidos: campo assunto') do
    @page.call(AtenBuscaPage).selecionar_fila_assun
    @page.call(AtenBuscaPage).insere_fila_assun
end

E('clicando na lupa de pesquisar Assunto') do
    @page.call(AtenBuscaPage).lupa_fila_assun
end

Então('o sistema deve localizar o atendimento por assunto e exibir') do|expect_message|
    within($div_atender) do 
     expect(page).to have_content expect_message
    end
end

#historico_data
Quando('selecionar a opção Histórico: por data') do
    @page.call(AtenBuscaPage).selecionar_hist_data
end
  
E('selecionar período Inicial até Fim') do
    @page.call(AtenBuscaPage).insere_hist_data
end

E('clicando na lupa para pesquisar por data') do
    @page.call(AtenBuscaPage).lupa_hist_data
end

Então('o sistema deve localizar o periodo e exibir a tela') do |expect_message|
    within($div_email) do 
     expect(page).to have_content expect_message
    end
end

#meu_historico_data
Quando('selecionar a opção Meu Histórico: Por data') do
    @page.call(AtenBuscaPage).selecionar_meu_hist
end
  
E('selecionar período De Inicio até Fim') do
    @page.call(AtenBuscaPage).insere_meu_data
end

E('clicando na lupa para pesquisa Historico') do 
    @page.call(AtenBuscaPage).lupa_meu_hist
end

Então('o sistema deve localizar o periodo do Histórico e exibir a tela') do |expect_message|
    within($div_meu_hist) do 
     expect(page).to have_content expect_message
    end
end

#teste
Quando('selecionar a opção Teste') do
    @page.call(AtenBuscaPage).selecionar_teste
end
 
E('clicando na lupa de pesquisar Teste') do 
    @page.call(AtenBuscaPage).lupa_teste
end

Então('o sistema deve localizar o Atendimento por teste e exibir a tela') do |expect_message|
    within($div_teste) do 
     expect(page).to have_content expect_message
    end
end
  