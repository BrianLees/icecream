Feature: Select a basic inventory for a truck

  As a manager,
  When I select a driver, route and inventory
  Then I should be able to send out a truck

  @basic_load
  Scenario: If a route, driver and 4 items are selected, truck is loaded
    Given I am logged into the Ice Cream site
    When  I designate a route
    And   I assign a driver
    And   I fill the inventory
    Then  I should be able to send out a truck

  @automatic_load
  Scenario: Test auto loading
    Given I am logged into the Ice Cream site
    When  I load the truck
    Then  I should be able to send out a truck
