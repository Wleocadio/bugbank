# language: pt

Funcionalidade: Login
    Como um cliente
    Quero acessar o site
    Para fazer meu cadastro no banco

Cenario: Login Inválido
  Dado que o usuário está no site da BugBank
  Quando tenta acessar o sistema com  usuário e senha inválidos
  Entao deve visualizar uma mensagem de alerta

|Usuario | Senha |
|        | 123   |
|123     |       |
|        |       |
|123     | 123   |
      

Cenario: Login Válido
  Dado que o usuário está no site da BugBank
  Quando tenta fazer o login com usuario e senha válidos
  Entao consegue acessar o seu painel

|Usuario | Senha |
|Java    |Bug123 |