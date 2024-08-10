#cnpj_valido
Quando('selecionar a opção CNPJ') do
    @page.call(SoluBuscaPage).selecionar_cnpj
end

E('preencher o campo com o CNPJ') do 
    @page.call(SoluBuscaPage).insere_cnpj
end
E('clicando na lupa de pesquisar o protocolo') do
    @page.call(SoluBuscaPage).lupa_solu_inva
end

Então('o sistema deve abrir uma tela com') do |expect_message|
    within($div_solu) do
     expect(page).to have_content expect_message
    end
end

#cnpj_invalido
Quando('selecionar opção CNPJ') do
    @page.call(SoluBuscaPage).selecionar_cnpj
end
  
E('preencher o campo com CNPJ inválido') do
    @page.call(SoluBuscaPage).insere_cnpj_inva
end
  
E('clicando na lupa de pesquisar o protocolo') do
    @page.call(SoluBuscaPage).lupa_solu_inva
end
  
Então('o sistema deve exibir a mensagem') do |expect_message|
    within($div_proto_inva) do 
     expect(page).to have_content expect_message
    end
end

#protocolo
Quando('selecionar a opção de Protocolo') do 
    @page.call(SoluBuscaPage).selecionar_proto
end

E('preencher o campo com N° Protocolo') do
    @page.call(SoluBuscaPage).insere_proto
end
  
E('clicando na lupa de pesquisar protocolo') do
    @page.call(SoluBuscaPage).lupa_solu_busca
end
  
Então('o sistema deve localizar Protocolo e abrir uma tela com') do |expect_message|
    within($div_solu) do 
     expect(page).to have_content expect_message
    end
end

#protocolo_invalido
Quando('preencher o campo com N° Procolo inválido') do
    @page.call(SoluBuscaPage).selecionar_proto
    @page.call(SoluBuscaPage).insere_proto_inva
end

E('clicando na lupa para pesquisar o protocolo') do
    @page.call(SoluBuscaPage).lupa_solu_inva
end

Então('o sistema deve exibir na mensagem') do |expect_message|
    within($div_proto_inva) do 
     expect(page).to have_content expect_message
    end
end