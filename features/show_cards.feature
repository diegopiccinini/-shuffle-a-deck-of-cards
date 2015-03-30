Feature: Show Cards
  Scenario: Listing cards per player
    Given I visit the homepage "/"
    When the Game has 2 players
    And 3 cards per player
    Then the results should be 2 groups of cards
    And 3 cards in each group
    And all cards should be different
