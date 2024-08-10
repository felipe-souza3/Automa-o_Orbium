#beneficiario
Quando('selecionar a opção Beneficiário - Número do Cartão') do
    @page.call(BuscaBenefPage).selecionar_beneficiario
end
  
E('preencher o campo com o número do cartão') do
    @page.call(BuscaBenefPage).insere_cartao
end
  
#E('clicar na lupa para pesquisar') do
    #@page.call(BuscaBenefPage).go_lupa
#end
  
Então('o sistema deve localizar beneficiário e exibir') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end