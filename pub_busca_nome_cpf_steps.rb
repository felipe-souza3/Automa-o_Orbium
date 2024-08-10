#nome
Quando('selecionar a opção Nome') do
    @page.call(NomeCpfPage).selecionar_nome
end
  
E('preencher o campo com o Nome') do
    @page.call(NomeCpfPage).insere_nome
end

E('clicar na lupa para pesquisar nome') do
    @page.call(NomeCpfPage).lupa_nome
end   
  
Então('o sistema deve localizar o nome e abrir uma tela sobre o Contrato e exibir') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#cpf
Quando('selecionar a opção CPF') do
    @page.call(NomeCpfPage).selecionar_cpf
end
  
E('preencher o campo com o CPF') do
    @page.call(NomeCpfPage).insere_cpf
end
  
Então('o sistema deve localizar o CPF e abrir uma tela sobre o Contrato E') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end
    