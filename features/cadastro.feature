#language: pt

Funcionalidade: Cadastro de Usuários
  Sendo um visitante do site Parodify
  Quero fazer o meu cadastro
  Para que eu possa ouvir minhas músicas favoritas

  @happy
  Cenario: Cadastro

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
      |email          | teste2@asd.com |
      |senha          | 123123      |
      |senha_confirma | 123123      |
    Então devo ser redirecionado para a área logada

  Esquema do Cenário: Tentativa de Cadastro

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
      |email          | <email>          |
      |senha          | <senha>          |
      |senha_confirma | <confirma_senha> |
    Então devo ver a mensagem: "<mensagem_saida>"

    Exemplos:
    | email           | senha  | confirma_senha | mensagem_saida                       |
    |                 | 123123 | 123123         | Oops! Informe seu email.             |
    | teste@teste.com |        |                | Oops! Informe sua senha.             |
    | teste@teste.com | 123123 | 567567         | Oops! Senhas não são iguais.         |
    |                 |        |                | Oops! Informe seu email e sua senha. |

  @temp
  Cenário: Validação do campo email

    Quando acesso a página de cadastro
    Então devo exibir o seguinte css: "input[type=email]"
