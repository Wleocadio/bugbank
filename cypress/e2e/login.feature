# language: pt

Funcionalidade: Login
    Como um cliente
    Quero acessar o site https://bugbank.netlify.app/
    Para acessar meu usuário no banco BugBank

Cenario: Login Inválido
  Dado que o cliente está no site da BugBank
  Quando tenta acessar o sistema com  usuário e senha inválidos
  Entao deve visualizar a mensagem "É campo obrigátorio"

|Email              |Senha    |
|                   |bug123   |
|bugemail.mail.com  |         |
|                   |         |
|bugemail.mail.com  |bug123   |
      

Cenario: Login Válido
  Dado que o cliente está no site da BugBank
  Quando tenta fazer o login com usuario e senha válidos
  Entao consegue acessar o seu painel

|Email              |Senha    |
|bugemail.mail.com  |bug123   |