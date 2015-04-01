Feature: Show Cards
  Scenario: Listing cards per player
    Given I visit the homepage "/"
    When the Game has 2 players
    And 3 cards per player
    Then the results should be 2 groups of cards
    And 3 cards in each group
    And all cards should be different
    And and each one should have a different image

  @javascript
  Scenario: Updating Cards per Player Field
    Given I visit the homepage "/"
    When I change the "players" to 5
    And should be a select tag "cards_per_player" having all options values between 1 and 10

