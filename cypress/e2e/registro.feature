# language: pt

Funcionalidade: Registro
    Como um possivel cliente
    Quero acessar o site da https://bugbank.netlify.app/
    Para fazer meu cadastro no banco

Cenario: Registro Inválido
  Dado que o cliente está na tela de cadastro da BugBank
  Quando tenta fazer o cadastro com Email, Nome, Senha e Confirma Senha inválidos
  Entao deve visualizar um alerta "É campo obrigatório" ou "Nome não pode ser vazio."

|Email                 |Nome        |Senha      |Confirma Senha |
|bugemail.mail.com     |NomeBug     |bug123     |bug123         |
|                      |NomeBug     |bug123     |bug123         |
|bugemail@mail.com     |NomeBug     |           |bug123         |
|bugemail@mail.com     |NomeBug     |bug123     |               |
|bugemail@mail.com     |            |bug123     |bug123         |
|bugemail@mail.com     |NomeBug     |bug123     |bug124         |
|bugemail@mail.com     |NomeBug     |bug124     |bug123         | 
      

Cenario: Registro Válido
  Dado que o cliente está na tela de cadastro da BugBank
  Quando tenta fazer o cadastro com Email, Nome, Senha e Confirma Senha válidos
  E ativar o botão para criar uma conta com saldo
  Entao deve visualizar a mensagem "Aconta x foi criada com sucesso"

|Email                 |Nome        |Senha      |Confirma Senha |
|bugemail@mail.com     |NomeBug     |bug123     |bug123         |