Feature: Save Players and Cards per Players
  @javascript
  Scenario: Saving new values
    Given I visit the homepage "/"
    When I change the "players" to 6
    And I change the "cards_per_player" to 5
    And click the button "Save and Show Cards"
    Then the results should be 6 groups of cards
    And 5 cards in each group
    And all cards should be different

