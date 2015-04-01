
When(/^the Game has (\d+) players$/) do |players|
	@players = players.to_i
	expect(find_field('players').value).to eq(players)
end

When(/^(\d+) cards per player$/) do |cards_per_player|
	@cards_per_player = cards_per_player.to_i
	expect(find_field('cards_per_player').value).to eq(cards_per_player)
end


Then(/^the results should be (\d+) groups of cards$/) do |group_of_cards|
	assert_selector('.group_of_cards', :count => group_of_cards)
end

Then(/^(\d+) cards in each group$/) do |subtotal_cards|
	all('.group_of_cards').each do |group_of_cards|
		within(group_of_cards) do
			assert_selector('li', :count => subtotal_cards)
		end
	end
end

Then(/^all cards should be different$/) do
	div_cards=find('#cards')
	@cards=[]
	within(div_cards) do
		all('li').each do |html|
			@cards.push html.text
		end
	end
	expect(@players * @cards_per_player).to eq(@cards.uniq.count)
end

Then(/^and each one should have a different image$/) do
	div_cards=find('#cards')
	@cards=[]
	within(div_cards) do
		all('img').each do |html|
			@cards.push html.src
		end
	end
	expect(@players * @cards_per_player).to eq(@cards.uniq.count)
end

When(/^I change the "(.*?)" to (\d+)$/) do |select_tag_name, selected_value|
	case select_tag_name
	when 'players'
		@players = selected_value.to_i
	when 'cards_per_player'
		@cards_per_player = selected_value.to_i
	end
  select selected_value, from: select_tag_name
end

