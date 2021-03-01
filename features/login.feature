#language: pt

Funcionalidade: Login
  Sendo um usuário previamente cadastrado
  Quero acessar o sistema com meu email e senha
  Para que eu possa acessar as playlists do Parodify

  @happy
  Cenario: Login do usuário

    Dado que acesso a página login
    Quando submeto minhas credenciais com: "cucumber@gmail.com" e "123123"
    Então devo ser redirecionado para a área logada

  @temp
  Esquema do Cenário: Tentativa de login

    Dado que acesso a página login
    Quando submeto minhas credenciais com: "<email>" e "<senha>"
    Então devo ver a mensagem de erro: "<mensagem_saida>"

    Exemplos:
      | email               | senha  | mensagem_saida                    |
      | cucumber@gmail.com  | abc123 | Opps! Dados de acesso incorretos! |
      |                     |        | Opps! Dados de acesso incorretos! |
      | cucumber@gmail.com  |        | Opps! Dados de acesso incorretos! |
      | cucumber@gmail.com  |        | Opps! Dados de acesso incorretos! |
