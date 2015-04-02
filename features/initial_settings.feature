Feature: Initials Setting
  The homepage has a form to ask the user how many players and cards he want.
  Scenario: Cheking the initial settings
    When I visit the homepage "/"
    Then should be a select tag "players" having all options values between 1 and 52
    And the "players" default value should be "2"
    And should be a select tag "cards_per_player" having all options values between 1 and 26
    And the "cards_per_player" default value should be "3"
