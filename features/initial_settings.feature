Feature: Initials Setting
  The homepage has a form to ask the user how many players and cards he want.
  Scenario: Cheking the initial settings
    When I visit the homepage "/"
    Then the players default value should be "2"
    And the cards per player default value should be "3"





