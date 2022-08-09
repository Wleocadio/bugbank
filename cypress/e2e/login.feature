# language: pt

Funcionalidade: Login
    Como um cliente
    Quero acessar o site
    Para fazer meu cadastro no banco

Cenario: Login Inválido
  Dado que o usuário está no site da BugBank
  Quando Tenta acessar o sistema sem digitar usuário e senha válidos
  Entao deve visualizar uma mensagem de campos obrigatórios
 
 