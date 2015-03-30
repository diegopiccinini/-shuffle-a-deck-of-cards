require 'capybara/dsl'

When(/^I visit the homepage "([^"]*)"$/) do |url|
  visit(url)
end

Then(/^the players default value should be "(\d+)"$/) do |players_value|
  expect(find_field('players').value).to  eq(players_value)
end

Then(/^the cards per player default value should be "(\d+)"$/) do |cards_per_player_value|
  expect(find_field('cards_per_player').value).to eq(cards_per_player_value)
end
