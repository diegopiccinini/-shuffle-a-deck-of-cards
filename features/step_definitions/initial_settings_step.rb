
When(/^I visit the homepage "([^"]*)"$/) do |url|
  visit(url)
end

Then(/^the players default value should be "(\d+)"$/) do |players_value|
  expect(find_field('players').value).to  eq(players_value)
end

Then(/^the cards per player default value should be "(\d+)"$/) do |cards_per_player_value|
  expect(find_field('cards_per_player').value).to eq(cards_per_player_value)
end

Given(/^one user has set a Game with (\d+) to shuffle cards$/) do |players|
	# create a new game with the given playeres
	@game = Game.new(players.to_i,1)
end

When(/^I check the game restrictions$/) do
  @maximun_cards = @game.maximun_cards
end

Then(/^It should has this (\d+)$/) do |maximun_cards|
  expect(@maximun_cards).to eq(maximun_cards.to_i)
end
