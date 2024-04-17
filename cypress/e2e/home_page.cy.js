const testing_url = 'https://cotacoesdehoje.com.br';

describe('Check if all homepage fatures work', () => {

  it('Access home page', () => {
    cy.visit(testing_url);

    cy.get('h1').contains('Cotações do dia')
  })


  it('Check if it loads the expected amount of currencies', () => {
    cy.visit(testing_url).wait(1500);
    
    cy.get('#availableCurrencies').invoke('text').then((testingValue) => {
      cy.get('.currency-name').should('have.length', testingValue)
    })
  })


  it('Checking if searching input is working', () => {
    cy.visit(testing_url).wait(1500);

    cy.get('.searchInput').type('Peso').wait(1500);

    cy.get('.currency-name').should('contain', 'Peso')
  })


  it('Checking if download report button is working', () => {
    cy.visit(testing_url).wait(1500);

    cy.get(':nth-child(3) > .green').click().wait(3500)
    cy.get('.Toastify__toast-body').should('be.visible')
  })

})