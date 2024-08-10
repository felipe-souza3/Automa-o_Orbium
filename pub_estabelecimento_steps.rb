#estabelecimento_cnpj
Quando('o usuário realizar a busca por Estabelecimento CNPJ') do 
  @page.call(EstabelecimentoPage).selecionar_estabelecimento
end

E('inserir o CNPJ') do 
  @page.call(EstabelecimentoPage).inserir_cnpj
end

  
Então ('o sistema deve exibir o nome do estabelecimento') do |expect_message|
  within($div_estab) do 
   expect(page).to have_content expect_message
  end
end

#estab_inf
Então ('o sistema deve exibir {string}') do |expect_message|
  expect(page).to have_content expect_message
end

#customização
Então ('a aba {string} deve ser exibida na tela') do |expect_message|
expect(page).to have_content expect_message
end



   
    
 