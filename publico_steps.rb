Dado ('que o usuário está na aba Público do Orbium') do
    @page.call(CommonPage).go
    @page.call(LoginPage).sign_in
    @page.call(PublicoPage).go_publico
end
    
      