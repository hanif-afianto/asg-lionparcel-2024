*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords/login_keywords.resource
Resource          ../resources/keywords/checkout_keywords.resource

*** Test Cases ***
Shopping Cart Checkout Flow
    Given I open the Sauce Demo login page
    When I log in with valid credentials
    And I add an item to the shopping cart
    And I proceed to checkout
    And I fill in checkout information
    And I finish the checkout process
    Then I should see the confirmation message
