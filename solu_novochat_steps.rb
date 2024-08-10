Quando('clicar no link  novo chat') do
    @page.call(SoluNchatPage).go_nchat
end
  
Então('o sistema deve abrir outra tela com informações sobre o chat') do |expect_message|
    within($div_nchat) do 
     expect(page).to have_content expect_message
    end
end

#rotear
E('clicar no botão rotear') do
    @page.call(SoluNchatPage).go_rotear
end
  
Então('o sistema deve abrir tela com') do |expect_message|
    within($div_rotear) do 
     expect(page).to have_content expect_message
    end
end

#rotear_fecha
E('clicar no botão para fechar') do
    @page.call(SoluNchatPage).fecha_rotear
end

Então('o sistema deve volta para a tela com') do |expect_message|
    within($div_nchat) do 
     expect(page).to have_content expect_message
    end
end

#transcrição
Quando('clicar no botão transcrição') do
    @page.call(SoluNchatPage).go_transc
end
  
E('clicar no botão do ok') do
    @page.call(SoluNchatPage).ok_transc
end
  
Então('o sistema exibe mensagem') do |expect_message|
    within($div_transc) do 
     expect(page).to have_content expect_message
    end
end

#casos
Quando('clicar no botão casos') do
    @page.call(SoluNchatPage).go_casos
end
  
Então('o sistema exibe tela com casos relacionados ao atentimento') do |expect_message|
    within($div_casos) do 
     expect(page).to have_content expect_message
    end
end

#casos_fecha
E('clicar no botão fechar casos') do
    @page.call(SoluNchatPage).casos_fecha
end

Então('o sistema deve voltar para a tela informação do novo chat') do |expect_message|
    within($div_nchat) do 
     expect(page).to have_content expect_message
    end
end

#papeis
Quando('clicar no botão papeis') do
    @page.call(SoluNchatPage).go_papeis
end
  
Então('o sistema exibe tela novo papeis do cliente') do |expect_message|
    within($div_papeis) do 
     expect(page).to have_content expect_message
    end
end

#papeis_fecha
E('clicar no botão fechar papeis') do
    @page.call(SoluNchatPage).fecha_papeis
end

Então('o sistema deve voltar a tela informação do novo chat') do |expect_message|
    within($div_nchat) do 
     expect(page).to have_content expect_message
    end
end

#historico
E('clicar na aba histórico') do
    @page.call(SoluNchatPage).go_hist
end

Então ('o sistema deve trazer os registros') do |expect_message|
    expect(page).to have_content expect_message
end

#historico_fecha
E('clicar no botão fechar historico') do
    @page.call(SoluNchatPage).fecha_hist
end

Então('o sistema deve fechar tela e voltar para a tela') do |expect_message|
    within($div_nchat) do 
     expect(page).to have_content expect_message
    end
end

#nchat_fecha
E('clicar no botão fechar chat') do 
    @page.call(SoluNchatPage).fecha_nchat
end

Então('o sistema deve voltar a tela de') do |expect_message|
    within($div_solu) do 
     expect(page).to have_content expect_message
    end
end

