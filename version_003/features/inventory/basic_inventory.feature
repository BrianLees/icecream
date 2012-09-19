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

  @verify_product_lists
  Scenario Outline: Ensure that the item drop downs contain all wanted items
    Given I am logged into the Ice Cream site
    Then  "<dropdown>" should contain:
      | Rocket Pop        |
      | Icecream Sandwich |
      | Fudge Bar         |
      | Chopped Liver     |

    Examples:
      | dropdown |
      | item_1   |
      | item_2   |
      | item_3   |
      | item_4   |
