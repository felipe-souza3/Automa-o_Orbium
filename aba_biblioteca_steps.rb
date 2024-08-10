  Dado('Dado que o usuário esteja no menu orbium') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
  end

  Quando('selecionar opção biblioteca') do
    @page.call(BibliBuscaPage).go_biblioteca
  end

  Quando('preencher o campo com o biblioteca') do
    @page.call(BibliBuscaPage).insere_nome
  end
  
  Quando('clicando na lupa de pesquisar biblioteca') do
    @page.call(BibliBuscaPage).click_lupa
  end
  
  Então('o sistema deve exibir pesquisa biblioteca') do
    @page.call(BibliBuscaPage).tela_resul_bibli
  end