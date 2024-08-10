#contrato
 Quando ('clicar na aba Contrato') do
    @page.call(EstabelecimentoContratoPage).go_contrato
 end

 Então ('o sistema deve exibir na tela') do |expect_message|
    within($div_cont) do 
     expect(page).to have_content expect_message  
    end
 end

#lupa
 E('clicar no botão lupa') do
    @page.call(EstabelecimentoContratoPage).clicar_lupa
 end
  
 Então('sistema deve exibir') do |expect_message|
    expect(page).to have_content expect_message
 end


#condições
 E('clicar na aba Condições Especiais') do
    @page.call(EstabelecimentoContratoPage).clicar_condicoes
 end

 Então('o sistema deve exibir a tela de') do |expect_message|
    within($div_comerc) do
     expect(page).to have_content expect_message
    end
end

#informações contrato
 E('clicar na aba Informações Contrato') do 
    @page.call(EstabelecimentoContratoPage).clicar_inf
 end
  
 Então('o sistema deve exibir a tela') do |expect_message|
    within($div_inf) do
    expect(page).to have_content expect_message
    end
 end

  
  