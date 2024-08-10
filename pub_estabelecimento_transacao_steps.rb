Quando('o usuário clicar na aba transação') do
    @page.call(TransacaoPage).go_transacao
end

E('utilizar o filtro') do
    @page.call(TransacaoPage).go_filtro
end

Então('o sistema deve exibir o resultado da pesquisa com sucesso') do |expect_message|
    within($div_trans) do
    expect(page).to have_content expect_message
    end
end
