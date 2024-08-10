#protocolo_busca
Quando('selecionar a opção Protocolo') do
    @page.call(AtenProtocoloPage).selecionar_proto
end
  
E('preencher o campo com o número do Protocolo') do
    @page.call(AtenProtocoloPage).insere_proto
end
  
E('clicando na lupa para pesquisar') do
    @page.call(AtenProtocoloPage).lupa_atendimentos
end
  
Então('o sistema deve localizar protocolo e exibir a tela') do
    within($div_proto) do 
     expect(page).to have_content $massa_global
    end
end

#protocolo_dados
Quando('o Protocolo for preenchido') do
    @page.call(AtenProtocoloPage).selecionar_proto
    @page.call(AtenProtocoloPage).insere_proto
end

Então('o sistema deve localizar o protocolo e exibir a tela') do |expect_message|
    within($div_proto) do 
     expect(page).to have_content expect_message
    end
end

#protocolo_aba_formulario
Quando('realizar a busca por Protocolo') do
    @page.call(AtenProtocoloPage).selecionar_proto
    @page.call(AtenProtocoloPage).insere_proto
    @page.call(AtenProtocoloPage).lupa_atendimentos
end
  
E('clicar na aba Formulários') do
    @page.call(AtenProtocoloPage).go_formu
end
  
Então('o sistema deve e exibir a tela') do |expect_message|
    within($div_formulario) do 
     expect(page).to have_content expect_message
    end
end

#protocolo_aba_casos
E('clicar na aba Casos') do
    @page.call(AtenProtocoloPage).go_casos
end

Então('o sistema deve exibir o texto') do |expect_message|
    within($div_casos) do 
     expect(page).to have_content expect_message
    end
end

#protocolo_aba_artigos
E('clicar na aba Artigos') do
    @page.call(AtenProtocoloPage).go_artigos
end

Então('o sistema deve exibir em tela o texto') do |expect_message|
    within($div_artigos) do 
     expect(page).to have_content expect_message
    end
end

#protocolo_aba_papeis
E('clicar na aba Papéis') do
    @page.call(AtenProtocoloPage).go_papeis
end

Então('o sistema deve exibir na tela o texto') do |expect_message|
    within($div_papeis) do 
     expect(page).to have_content expect_message
    end
end

#protocolo_aba_historico
Quando('realizar a busca de Protocolo') do
    @page.call(AtenProtocoloPage).selecionar_proto
    @page.call(AtenProtocoloPage).insere_proto_hist
    @page.call(AtenProtocoloPage).lupa_atendimentos
end

E('clicar na aba Histórico') do 
    @page.call(AtenProtocoloPage).go_historico
end

Então('o sistema deve exibir o registro de chamadas e') do |expect_message|
    within($div_historico) do 
     expect(page).to have_content expect_message
    end
end 

#protocolo_aba_campanha
E('clicar na aba Campanha') do
    @page.call(AtenProtocoloPage).go_campanha
end

Então('o sistema deve exibir a tela ') do |expect_message|
    within($div_campanha) do 
        expect(page).to have_content expect_message
    end
end 

#protocolo_fechar
E('clicar no botão fechar') do
    @page.call(AtenProtocoloPage).go_fechar
end

Então('o sistema deve voltar para a tela de') do |expect_message|
    within($div_atendimentos) do 
        expect(page).to have_content expect_message
    end
end 
  