Dado('que o usuário está na aba Solucionadora do Orbium') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(SolucionadoraPage).go_solucionadora
  end
  