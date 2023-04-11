import user from '../../../factory/users.json';
const el = require('./elements').ELEMENTS;

class Register {
    acessarRegistrar(){
        cy.get('.ihdmxA').click()
    }
    
    realizarRegisto(){
        
    cy.get(el.email).should('be.visible').eq(1).type(user.email,{force:true}).should('have.value',user.email)
    cy.get(el.nome).type(user.nome,{force:true}).should('have.value',user.nome)
    cy.get(el.senha).eq(1).type(user.senha,{force:true}).should('have.value',user.senha)
    cy.get(el.confirmaSenha).type(user.senha,{force:true}).should('have.value',user.senha)
    cy.get(el.buttonSaldo).click({force:true})
    cy.contains(el.buttonCadastrar).click({force:true})
    }

    validarRegistro(){
        cy.get('#modalText').should('be.visible')
    }

}

export default new Register()