
When(/^the Game has (\d+) players$/) do |players|
	expect(find_field('players').value).to eq(players)
end

When(/^(\d+) cards per player$/) do |cards_per_player|
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
	expect(@cards.count).to eq(@cards.uniq.count)
end
