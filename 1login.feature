#language:pt

Funcionalidade: Realizar login no sistema
  Para que o usuário possa ter acesso ao sistema orbium
  Sendo um usuário devidamente cadastrado
  Possa realizar login

Contexto: Estar na página de acesso
  Dado que o usuário está na página de login

@smoke @login @login_valido @ativo
Cenário: Login com sucesso
  Quando o usuário informar os campos de login corretamente
  Então o sistema deverá apresentar atendimento na área logada

@smoke @login @login_invalido @ativo
Esquema do Cenário: Email ou Senha inválidos
  Quando o usuário informar os campos com <user> e <password>
  Então o sistema apresentará a <mensagem>

    Exemplos:
      | user               | password    | mensagem                                                                                                                            |
      | 'thaina.queiroz'   | '123@mudar' | 'Your login attempt was not successful. Please try again.' |
      | 'teste.teste'      | 'teste321'  | 'Your login attempt was not successful. Please try again.' |
