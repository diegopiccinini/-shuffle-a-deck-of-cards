
When(/^I visit the homepage "([^"]*)"$/) do |url|
  visit(url)
end


Then(/^should be a select tag "(.*?)" having all options values between (\d+) and (\d+)$/)  do |expected_select_name,expected_min, expected_max|
  expected_options_values=(expected_min..expected_max).to_a
  options_values = []
  find_field(expected_select_name).all('option').each do |option|
    options_values.push option.value
  end
  expect(options_values).to match_array (expected_options_values)
end
Then(/^the "(.*?)" default value should be "(.*?)"$/) do |expected_select_name,players_value|
  expect(find_field(expected_select_name).value).to  eq(players_value)
end

Given(/^one user has set a Game with (\d+) to shuffle cards$/) do |players|
	# create a new game with the given playeres
	@game = Game.new(players.to_i,1)
end

When(/^I check the game restrictions$/) do
  @maximun_cards_per_player = @game.maximun_cards_per_player
end

Then(/^It should has this (\d+)$/) do |maximun_cards_per_player|
  expect(@maximun_cards_per_player).to eq(maximun_cards_per_player.to_i)
end

When(/^I start a game with this number of (\w+)$/) do |players|
  @players=players
end

And(/^and this (\w+)$/) do |cards_per_player|
  @cards_per_player = cards_per_player
end


Then(/^I should rescue this ToManyPlayersError$/) do
	expect{@game = Game.new(@players,@cards_per_player)}.to raise_error(ToManyPlayersError)
end

Then(/^I should rescue this ToManyCardsPerPlayerError$/) do
	expect{@game = Game.new(@players,@cards_per_player)}.to raise_error(ToManyCardsPerPlayerError)
end

Then(/^I should rescue this NotEnoughPlayersError$/) do
	expect{@game = Game.new(@players,@cards_per_player)}.to raise_error(NotEnoughPlayersError)
end

Then(/^I should rescue this NotEnoughCardsPerPlayersError$/) do
	expect{@game = Game.new(@players,@cards_per_player)}.to raise_error(NotEnoughCardsPerPlayersError)
end

Then(/^I should rescue this TooManyCardsDemandedError$/) do
	expect{@game = Game.new(@players,@cards_per_player)}.to raise_error(TooManyCardsDemandedError)
end
Then(/^I should rescue this TypeError$/) do
  expect{@game = Game.new(@players,@cards_per_player)}.to raise_error(TypeError)
end
