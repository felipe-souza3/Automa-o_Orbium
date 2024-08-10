#reembolso
Quando('clicar na aba Reembolso') do
    @page.call(EstabelecimentoReembolsoPage).go_reembolso
end

E('utilizar os filtros') do
    @page.call(EstabelecimentoReembolsoPage).sel_filtros
end
  
E('clicar no botão buscar') do
    @page.call(EstabelecimentoReembolsoPage).clicar_buscar
end

Então('o sistema deve exibir o') do |expect_message|
    within($div_reemb) do 
    expect(page).to have_content expect_message
    end
end

#serpar

E('clicar no botão serpar') do
    @page.call(EstabelecimentoReembolsoPage).clicar_serpar
end

Então('o sistema deve exibir') do |expect_message|
    within($div_serp) do 
     expect(page).to have_content expect_message
     end
end

#filiação
E('clicar no botão filiação') do
    @page.call(EstabelecimentoReembolsoPage).clicar_filiacao
end

Então('o sistema deve exibir em tela') do |expect_message|
    within($div_fili) do
    expect(page).to have_content expect_message
    end
end

#banco
E('clicar no botão banco') do
    @page.call(EstabelecimentoReembolsoPage).clicar_banco
end
  
Então('deve exibir na tela') do |expect_message|
    within($div_fili) do
    expect(page).to have_content expect_message
    end
end 