const testing_url_prod = 'https://cotacoesdehoje.com.br';
const testing_url_dev = 'http://localhost:3000/'

describe('Check if all homepage fatures work', () => {

  it('Access home page', () => {
    cy.visit(testing_url_prod);

    cy.get('h1').contains('Cotações do dia')
  })


  it('Check if it loads the expected amount of currencies', () => {
    cy.visit(testing_url_prod).wait(1500);
    
    cy.get('#availableCurrencies').invoke('text').then((testingValue) => {
      cy.get('.currency-name').should('have.length', testingValue)
    })
  })


  it('Checking if searching input is working', () => {
    cy.visit(testing_url_prod).wait(1500);

    cy.get('.searchInput').type('Peso').wait(1500);

    cy.get('.currency-name').should('contain', 'Peso')
  })


  it('Checking if download report button is working', () => {
    cy.visit(testing_url_prod).wait(1500);

    cy.get(':nth-child(3) > .green').click().wait(3500)
    cy.get('.Toastify__toast-body').should('be.visible')
  })


  it('Check if suggest currency form works', () => {
    cy.visit(testing_url_prod).wait(1500);

    cy.get(':nth-child(14) > div > .ui').click();

    cy.get('.modal-content').should('be.visible');
    cy.get('.modal-footer > .green').should('be.disabled')

    cy.get('#name').type('Victor');
    cy.get(':nth-child(2) > .generalInput').type('testing@email.com');
    cy.get(':nth-child(3) > .generalInput').type('dolar')

    cy.get('.modal-footer > .green').should('be.visible')
    cy.get('.modal-footer > .green').click();

    cy.get('.swal-title').should('contain', 'Obrigado')
  })


  it('Check if suggest currency form correctly rejects submittion of form with invalid email address', () => {
    cy.visit(testing_url_prod).wait(1500);

    cy.get(':nth-child(14) > div > .ui').click();

    cy.get('.modal-content').should('be.visible');
    cy.get('.modal-footer > .green').should('be.disabled')

    cy.get('#name').type('Victor');
    cy.get(':nth-child(2) > .generalInput').type('invalidemail');
    cy.get(':nth-child(3) > .generalInput').type('dolar')

    cy.get('.modal-footer > .green').should('be.visible')
    cy.get('.modal-footer > .green').click();

    cy.get('.Toastify__toast-body').should('contain', 'Por favor informe um endereço de e-mail válido!')
    cy.get('.modal-content').should('be.visible');
  })

  it('Check if suggest currency form correctly rejects submittion of form, if some required field is empty', () => {
    cy.visit(testing_url_prod).wait(1500);

    cy.get(':nth-child(14) > div > .ui').click();

    cy.get('.modal-content').should('be.visible');
    cy.get('.modal-footer > .green').should('be.disabled')

    cy.get('#name').type('Victor');
    cy.get(':nth-child(2) > .generalInput').type('testing@email.com');

    cy.get('.modal-footer > .green').should('be.disabled')
  
  })


  it('Check if suggest current form can be closed', () => {
    cy.visit(testing_url_prod).wait(1500);

    cy.get(':nth-child(14) > div > .ui').click();

    cy.get('.modal-content').should('be.visible');
    cy.get('.modal-footer > .green').should('be.disabled')

    cy.get('[variant="secondary"]').should('be.visible').click()
  
  })


  // it('Check currency filters work', () => {
  //   cy.visit(testing_url_dev).wait(1500);

  //   cy.get('.selection').click();
  //   cy.get('#higher_value').click();

  //   cy.get('.currency-value').invoke('text').then((currencyValues) => {
  //     cy.log(currencyValues.length)
         

  //        let test = currencyValues.replaceAll('Valor:', '')
  //         test = currencyValues.replaceAll('R$', '')

  //         cy.log( test)
  //   })
  
  // })

})