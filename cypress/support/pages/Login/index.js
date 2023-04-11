
import User from '../../../factory/users.json'

const el = require('./elements').ELEMENTS;


class Login {
    acessarLogin(){
        cy.visit('https://bugbank.netlify.app/#')
    }

    realizerLogin(){
        cy.get(el.email).should('be.visible').eq(0).type(User.email).should('have.value', User.email)
        cy.get(el.senha).should('be.visible').eq(0).type(User.senha).should('have.value', User.senha)
        cy.get(el.submit).should('be.visible').click()
    }

    validaLogin(){
        
    }


}

export default new Login()