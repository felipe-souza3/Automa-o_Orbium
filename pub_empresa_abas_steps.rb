Quando('Preencher o filtro de pedidos') do
    @page.call(EmpresaAbasPage).clicar_pedidos
    @page.call(EmpresaAbasPage).filtro_ped
end

E('clicar no botão de busca') do
    @page.call(EmpresaAbasPage).go_busca
end

Então('deve exibir os registros de pedidos e') do |expect_message|
    within($div_ped) do 
     expect(page).to have_content expect_message
    end
end

#emp_entregas
Quando('clicar na aba Entregas') do
    @page.call(EmpresaAbasPage).clicar_ent
end

E('Preencher o filtro de Entregas') do 
    @page.call(EmpresaAbasPage).filtro_ent
end
  
Então('deve exibir os registros de Entregas e') do |expect_message|
    within($div_ent) do 
     expect(page).to have_content expect_message
    end
end

#emp_financ
Quando('clicar na aba Financeiro') do 
    @page.call(EmpresaAbasPage).clicar_financ
end

E('Preencher o filtro do Financeiro') do
    @page.call(EmpresaAbasPage).filtro_financ
end

E('clicar no botão para busca') do
    @page.call(EmpresaAbasPage).busca_nf
end

Então('deve exibir os registros de Notas Fiscais e') do |expect_message|
    within($div_finan) do 
     expect(page).to have_content expect_message
    end
end

#emp_contratos
Quando('clicar na aba Contratos') do
    @page.call(EmpresaAbasPage).clicar_cont
end

Então('deve se exibir a tela de') do |expect_message|
    within($div_cont) do 
     expect(page).to have_content expect_message
    end 
end

#contrato_lupa
E('clicar na lupa') do
    @page.call(EmpresaAbasPage).cont_lupa
end

Então('deve exibir a tela de') do |expect_message|
    within($div_cliente) do 
     expect(page).to have_content expect_message
    end
end

#cond_comer
E('clicar na aba Condições Comerciais') do
    @page.call(EmpresaAbasPage).clicar_cond
end

Então('o sistema deve exibir a tela com') do |expect_message|
    within($div_condic) do 
     expect(page).to have_content expect_message
    end
end


#beneficiario
Quando('clicar na aba Beneficiário') do
    @page.call(EmpresaAbasPage).clicar_benef
end

E('preencher o filtro de Beneficiário') do
    @page.call(EmpresaAbasPage).filtro_benef
end

E('clicar em botão buscar') do
    @page.call(EmpresaAbasPage).buscar_benef
end

Então('deve exibir lista de cartões com Saldo Expurgado') do |doc_string|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

