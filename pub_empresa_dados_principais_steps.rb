Dado('que o usuário está na tela de Dados Principais e Informações Adicionais') do
  @page.call(CommonPage).go
  @page.call(LoginPage).sign_in
  @page.call(PublicoPage).go_publico
  @page.call(EmpresaPage).selecionar_empresa
  @page.call(EmpresaPage).insere_cnpj
  @page.call(EmpresaPage).go_lupa
  @page.call(EmpresaAbasPage).maximizar
end    