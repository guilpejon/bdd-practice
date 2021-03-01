#language: pt

Funcionalidade: Login
  Sendo um usuário previamente cadastrado
  Quero acessar o sistema com meu email e senha
  Para que eu possa acessar as playlists do Parodify

  @happy
  Cenario: Login do usuário

    Dado que acesso a página login
    Quando submeto minhas credenciais com: "fernando@bol.com.br" e "pwd123"
    Então devo ser redirecionado para a área logada

  @temp
  Esquema do Cenário: Tentativa de login

    Dado que acesso a página login
    Quando submeto minhas credenciais com: "<email>" e "<senha>"
    Então devo ver a mensagem de erro: "<mensagem_saida>"

    Exemplos:
      | email               | senha  | mensagem_saida                    |
      | fernando@404.com.br | abc123 | Opps! Dados de acesso incorretos! |
      |                     |        | Opps! Dados de acesso incorretos! |
      | fernando@gmail.com  |        | Opps! Dados de acesso incorretos! |
      | fernando@404.com.br |        | Opps! Dados de acesso incorretos! |
