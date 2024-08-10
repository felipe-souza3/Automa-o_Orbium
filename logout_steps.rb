  Quando('clicar no botão desligar') do
    @page.call(TodayStatusPage).log_out
  end
  
  Então('o sistema deve voltar para a tela de login') do |expect_message|
    within($div_login) do 
      expect(page).to have_content expect_message
    end
  end