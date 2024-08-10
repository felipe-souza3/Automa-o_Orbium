#empresa_cnpj_radical
Quando('selecionar a opção Empresa - CNPJ Radical') do
    @page.call(BuscaEmpPage).selecionar_emprad
end

E('preencher o campo com o número do CNPJ Radical da empresa') do
    @page.call(BuscaEmpPage).insere_emprad
end

E('clicar na lupa para pesquisar CNPJ Radical') do
    @page.call(BuscaEmpPage).lupa_emp
end

Então('o sistema deve localizar CNPJ da empresa e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_nome_completo
Quando('selecionar a opção Empresa - Razão Social nome completo') do
    @page.call(BuscaEmpPage).selecionar_empcomp
end

E('preencher o campo com o nome completo da empresa') do
    @page.call(BuscaEmpPage).insere_empcomp
end


E('clicar na lupa para pesquisar nome completo da Empresa') do
    @page.call(BuscaEmpPage).lupa_empcomp
end

Então('o sistema deve localizar o nome da Empresa e exibir') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_nome_parcial
Quando('selecionar a opção Empresa - Razão Social nome parcial') do
    @page.call(BuscaEmpPage).selecionar_empparc
end

E('preencher o campo com o nome parcial da empresa') do
    @page.call(BuscaEmpPage).insere_empparc
end

E('clicar na lupa para pesquisar nome parcial da Empresa') do
    @page.call(BuscaEmpPage).lupa_empparc
end

Então('o sistema deve localizar o nome e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_pedido
Quando('selecionar a opção Empresa - N° do Pedido') do
    @page.call(BuscaEmpPage).selecionar_empped
end

E('preencher o campo com o N° do Pedido') do
    @page.call(BuscaEmpPage).insere_empped
end

E('clicar na lupa para pesquisar pedido') do
    @page.call(BuscaEmpPage).lupa_empped
end

Então('o sistema deve localizar o pedido e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_n°_cesta
Quando('selecionar a opção Empresa - N° da Cesta') do
    @page.call(BuscaEmpPage).selecionar_empcesta
end

E('preencher o campo com o N° da Cesta') do
    @page.call(BuscaEmpPage).insere_empcesta
end

E('clicar na lupa para pesquisar N° Cesta') do
    @page.call(BuscaEmpPage).lupa_empcesta
end

Então('o sistema deve localizar a cesta e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_n°_e-ticket
Quando('selecionar a opção Empresa - N° de E-Ticket') do
    @page.call(BuscaEmpPage).selecionar_emptick
end

E('preencher o campo com o N° de E-Ticket') do
    @page.call(BuscaEmpPage).insere_emptick
end

E('clicar na lupa para pesquisar E-Ticket') do
    @page.call(BuscaEmpPage).lupa_emptick
end

Então('o sistema deve localizar E-Ticket e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_n°_envio
Quando('selecionar a opção Empresa - N° Envio') do
    @page.call(BuscaEmpPage).selecionar_empenvio
end

E('preencher o campo com o N° Envio') do
    @page.call(BuscaEmpPage).insere_empenvio
end

E('clicar na lupa para pesquisar Envio') do
    @page.call(BuscaEmpPage).lupa_empenvio
end

Então('o sistema deve localizar N° Envio e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_n°_RPS
Quando('selecionar a opção Empresa - N° de RPS') do
    @page.call(BuscaEmpPage).selecionar_emprps
end

E('preencher o campo com o N° de RPS') do
    @page.call(BuscaEmpPage).insere_emprps
end

E('clicar na lupa para pesquisar RPS') do
    @page.call(BuscaEmpPage).lupa_emprps
end

Então('o sistema deve localizar N° de RPS e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_num_contrato
Quando('selecionar a opção Empresa - Num do Contrato') do
    @page.call(BuscaEmpPage).selecionar_empcont
end

E('preencher o campo com o Num do Contrato empresa') do
    @page.call(BuscaEmpPage).insere_empcont
end

E('clicar na lupa para pesquisar contrato') do
    @page.call(BuscaEmpPage).lupa_empcont
end

Então('o sistema deve localizar Num do Contrato e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end

#empresa_num_reembolso
Quando('selecionar a opção Empresa - Num do Reembolso') do
    @page.call(BuscaEmpPage).selecionar_empreemb
end

E('preencher o campo com o Numero de Reembolso') do
    @page.call(BuscaEmpPage).insere_empreemb
end

E('clicar na lupa para pesquisar Reembolso') do
    @page.call(BuscaEmpPage).lupa_empreemb
end

Então('o sistema deve localizar Num do Reembolso e abrir uma tela com') do |expect_message|
    within($div_estab) do 
     expect(page).to have_content expect_message
    end
end
