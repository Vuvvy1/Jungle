describe("Testing Home Page", () => {
  before(() => {
    cy.visit("0.0.0.0:3000"); // Visit Home Page
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("should add product from home page and see cart increase by 1", () => {
    cy.viewport(1920, 3080);

    cy.get("article").first().click();

    cy.url().should("include", "/products");

    cy.get('[data-cy="cart"] > .nav-link').should("include.text", "My Cart (0)");


    cy.get(".btn").first().click();


    cy.get('[data-cy="cart"] > .nav-link').should(
      "include.text",
      "My Cart (1)"
    );
  });
});
