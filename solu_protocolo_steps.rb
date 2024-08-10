Dado('que o usuário esteja na tela de Protocolo') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(SolucionadoraPage).go_solucionadora
    @page.call(SoluBuscaPage).selecionar_proto
    @page.call(SoluBuscaPage).insere_proto
    @page.call(SoluBuscaPage).lupa_solu_busca
  end

Quando('clicar na aba Anotações') do
    @page.call(SoluProtoPage).go_anotacoes
end
  
Então('o sistema deve abrir a tela Anotações com') do |expect_message|
  within($div_anotacoes) do 
    expect(page).to have_content expect_message
  end
end

#nova_anotacao
E('o usuário realizar uma nova anotação') do 
  @page.call(SoluProtoPage).put_anota
end

E('clicar em Gravar') do
  @page.call(SoluProtoPage).save_anota
end

Então('o sistema deve exibir no grid anotações') do |expect_message|
  within($div_nova_anota) do 
    expect(page).to have_content expect_message
  end
end

#nova_anotação_fechar
E('clicar em Fechar') do
  @page.call(SoluProtoPage).fecha_anota
end

Então('o sistema deve voltar para a tela de protocolo') do |expect_message|
  within($div_solu) do 
    expect(page).to have_content expect_message
  end
end

#anexo
Quando('clicar na aba Anexos') do
  @page.call(SoluProtoPage).go_anexo
end

Então('o sistema deve exibir a tela de Anexos com') do |expect_message|
  within($div_anexo) do 
    expect(page).to have_content expect_message
  end
end

#historico
Quando('clicar na aba de Histórico') do
  @page.call(SoluProtoPage).go_historico
end 

Então('o sistema deve exibir a tela de Históricos') do |expect_message|
  within($div_historico) do 
    expect(page).to have_content expect_message
  end
end

#historico_fechar
E('clicar no botão fechar histórico') do
  @page.call(SoluProtoPage).fecha_historico
end 

Então('o sistema deve voltar para na tela de protocolo') do |expect_message|
  within($div_solu) do 
    expect(page).to have_content expect_message
  end
end

#protocolo_fechar
Quando('clicar na aba Fechar') do
  @page.call(SoluProtoPage).fecha_protocolo
end 

Então('o sistema deve voltar para a tela de busca de protocolo') do |expect_message|
  within($div_busca_atendimento) do 
    expect(page).to have_content expect_message
  end
end