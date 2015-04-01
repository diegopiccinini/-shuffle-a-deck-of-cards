Feature: Game Settings Form
	Scenario: Checking form
    When I visit the homepage "/"
    Then should have content "Change the Game Settings" within a form tag
    And a label for "players" should have content "Players"
    And a label for "cards_per_player" should have content "Cards per Player"
    And one submit button "Save and Show Cards"