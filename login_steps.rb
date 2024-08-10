Quando('o usuário informar os campos de login corretamente') do
  @page.call(LoginPage).sign_in
end

Então('o sistema deverá apresentar atendimento na área logada') do 
  expect(page).to have_xpath '/html/body/nav/div/div[1]/a/img'
end

Quando('o usuário informar os campos com {string} e {string}') do |user, pass|
  @page.call(LoginPage).sign_in_failure(user, pass)
end

Então('o sistema apresentará a {string}') do |expect_message|
  expect(page).to have_content expect_message
end
