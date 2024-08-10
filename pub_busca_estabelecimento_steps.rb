#estabelcimento_cpnj_radical
Quando('selecionar a opção Estabelecimento - CNPJ Radical') do
    @page.call(BuscaEstabPage).selecionar_estabrad
end

E('preencher o campo com o número do CNPJ Radical do Estabelecimento') do
    @page.call(BuscaEstabPage).insere_estabrad
end
 
E('clicar na lupa para pesquisar Estabelecimento') do 
    @page.call(BuscaEstabPage).lupa_estab
end

Então('o sistema deve localizar CNPJ Radical do Estabelecimento e exibir') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#estabelecimento_nome_completo
Quando('selecionar a opção Estabelecimento - Razão Social nome completo') do
    @page.call(BuscaEstabPage).selecionar_estabcomp
end

E('preencher o campo com o nome completo do Estabelecimento') do
    @page.call(BuscaEstabPage).insere_estabcomp
end

Então('o sistema deve localizar nome do Estabelecimento e exibir em tela') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#estabelecimento_nome_parcial
Quando('selecionar a opção Estabelecimento - Razão Social nome parcial') do
    @page.call(BuscaEstabPage).selecionar_estabaparc
end

E('preencher o campo com o nome parcial do Estabelecimento') do
    @page.call(BuscaEstabPage).insere_estabparc
end

E('clicar na lupa para pesquisar Estabelecimento por Nome Parcial') do
    @page.call(BuscaEstabPage).lupa_estabparc
end

Então('o sistema deve localizar nome do Estabelecimento e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#estabelecimento_num_contrato
Quando('selecionar a opção Estabelecimento - Num do Contrato') do
    @page.call(BuscaEstabPage).selecionar_estabcont
end

E('preencher o campo com o Num do Contrato') do
    @page.call(BuscaEstabPage).insere_estabcont
end

E('clicar na lupa para pesquisar numero do contrato') do
    @page.call(BuscaEstabPage).lupa_estabcont
end

Então('o sistema deve localizar o Contrato e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#estabelecimento_num_reembolso
Quando('selecionar a opção Estabelecimento - Num do Reembolso') do
    @page.call(BuscaEstabPage).selecionar_estabreemb
end

E('preencher o campo com o Num do Reembolso') do
    @page.call(BuscaEstabPage).insere_estabreemb
end

E('clicar na lupa para pesquisar num reembolso') do
    @page.call(BuscaEstabPage).lupa_estabreemb
end

Então('o sistema deve localizar o Reembolso e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end   