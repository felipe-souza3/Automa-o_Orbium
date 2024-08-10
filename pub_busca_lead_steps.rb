#lead

Quando('selecionar a opção Lead - CNPJ') do
    @page.call(BuscaLeadPage).selecionar_lead
end
  
E('preencher o campo com o número do CNPJ Lead') do
    @page.call(BuscaLeadPage).insere_cnpj
end
  
E('clicar na lupa de pesquisa') do
    @page.call(BuscaLeadPage).go_lupa
end
  
Então('o sistema deve localizar CNPJ e abrir a tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#lead_cnpj_radical
Quando('selecionar a opção Lead - CNPJ Radical') do
    @page.call(BuscaLeadPage).selecionar_leadrad
end
  
E('preencher o campo com o número do CNPJ Radical do Lead') do
    @page.call(BuscaLeadPage).insere_cnpjrad
end

Então('o sistema deve localizar CNPJ Radical e exibir') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end    

#lead_nome_parcial
Quando('selecionar a opção Lead - Razão Social nome parcial') do
    @page.call(BuscaLeadPage).selecionar_leadpar
end  

E('preencher o campo com o nome parcial do Lead') do
    @page.call(BuscaLeadPage).insere_leadpar
end 

E('clicar na lupa para pesquisar nome parcial de lead') do
    @page.call(BuscaLeadPage).lupa_lead
end  

Então('o sistema deve localizar Razão do lead e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end 

#lead_nome_completo
Quando('selecionar a opção Lead - Razão Social nome completo') do
    @page.call(BuscaLeadPage).selecionar_leadcomp
end  
  
E('preencher o campo com o nome completo do Lead') do
    @page.call(BuscaLeadPage).insere_leadcomp
end 
  
E('clicar na lupa para pesquisar nome completo de lead') do
    @page.call(BuscaLeadPage).lupa_leadcomp
end 
  
Então('o sistema deve localizar Razão e abrir uma tela com') do |expect_message|
    within($div_estab) do 
        expect(page).to have_content expect_message
    end
end