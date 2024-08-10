#empresa_cnpj
Quando('selecionar a opção Empresa - CNPJ') do
    @page.call(EmpresaPage).selecionar_empresa
end
  
E('Preencher o campo com o número do CNPJ') do
    @page.call(EmpresaPage).insere_cnpj
end
  
E('clicar na lupa para pesquisar') do
    @page.call(EmpresaPage).go_lupa
end
  
Então('o sistema deve localizar CNPJ e abrir uma tela com') do |expect_message|
    within($div_cliente) do 
     expect(page).to have_content expect_message
    end
end

#Dados Principais e Informações Adicionais
Então('sistema deve exibir na tela') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#customização
E('clicar na aba Customização') do
    @page.call(EmpresaPage).go_custom
  end

Então('o sistema vai exibir em tela') do |expect_message|   
    within($div_emp) do 
     expect(page).to have_content expect_message
    end
end