Feature: Initials Setting
  The homepage has a form to ask the user how many players and cards he want.
  Scenario: Cheking the initial settings
    When I visit the homepage "/"
    Then the players default value should be "2"
    And the cards per player default value should be "3"

	Scenario Outline: Checking Maximun Cards per Player
		Given one user has set a Game with <Players> to shuffle cards
		When I check the game restrictions
		Then It should has this <Maximun Cards per Player>
		Examples:
			| Players | Maximun Cards per Player	|
			|		1			|						52							|
			|		2			|						26							|
			|		3			|						17							|
			|		4			|						13							|
			|		5			|						10							|
			|		6			|						8								|
			|		7			|						7								|
			|		8			|						6								|
			|		9			|						5								|
			|		10		|						5								|
			|		11		|						4								|
			|		12		|						4								|
			|		13		|						4								|
			|		14		|						3								|
			|		15		|						3								|
			|		16		|						3								|
			|		17		|						3								|
			|		18		|						2								|
			|		19		|						2								|
			|		20		|						2								|
			|		21		|						2								|
			|		22		|						2								|
			|		23		|						2								|
			|		24		|						2								|
			|		25		|						2								|
			|		26		|						2								|
			|		27		|						1								|
			|		28		|						1								|
			|		29		|						1								|
			|		30		|						1								|
			|		31		|						1								|
			|		32		|						1								|
			|		33		|						1								|
			|		34		|						1								|
			|		35		|						1								|
			|		36		|						1								|
			|		37		|						1								|
			|		38		|						1								|
			|		39		|						1								|
			|		40		|						1								|
			|		41		|						1								|
			|		42		|						1								|
			|		43		|						1								|
			|		44		|						1								|
			|		45		|						1								|
			|		46		|						1								|
			|		47		|						1								|
			|		48		|						1								|
			|		49		|						1								|
			|		50		|						1								|
			|		51		|						1								|
			|		52		|						1								|





