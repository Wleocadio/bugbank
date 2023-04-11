/// <reference types="cypress" />


import Login from '../support/pages/Login';
import Register from '../support/pages/Register';

describe('empty spec', () => {



  it('Acessar BugBank', () => {
    Login.acessarLogin()
  })
  it('Cadastrar Conta', () => {
    Login.acessarLogin()
    Register.acessarRegistrar()
    Register.realizarRegisto()
    Register.validarRegistro()

  });

  it.only('Login com Sucesso', () => {
    Login.acessarLogin()
    Login.realizerLogin()
    Login.validaLogin()
  })

  













})