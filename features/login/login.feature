Feature: Login to the Ice Cream website

  As a user
  When I enter valid credentials
  Then I should be granted access to the site

  @login
  Scenario: Login in with valid credentials
    Given I enter valid credentials
    When  I login to the site
    Then  I am on the inventory screen
