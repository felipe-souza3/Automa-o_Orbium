Dado('que o usuário está na aba Atendimentos do Orbium') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(AtendimentosPage).go_atendimentos
  end
  