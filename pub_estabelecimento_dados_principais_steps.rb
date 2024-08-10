Dado('que o usuário esteja na tela de Dados Principais e Informações Adicionais') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(PublicoPage).go_publico
    @page.call(EstabelecimentoPage).selecionar_estabelecimento
    @page.call(EstabelecimentoPage).inserir_cnpj
    
  end

