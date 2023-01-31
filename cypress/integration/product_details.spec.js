describe("Testing Home Page", () => {
  before(() => {
    cy.visit("0.0.0.0:3000"); // Visit Home Page
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("clicks on the article", () => {
    cy.get("article").first().click();
    cy.url().should("include", "/products/1");
  });

});
