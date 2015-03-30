class Game

	def initialize(players = PLAYERS, cards_per_player=CARDS_PER_PLAYER)
		@players=players
		@cards_per_player=cards_per_player
		@cards_collection = {}
		CARDS_VALUES.each do |card_value|
			SUITS.each do |suit|
				card = Card.new(card_value,suit)
				@cards_collection[card.id]=card
			end
			@cards_availables= @cards_collection.keys
		end
	end
	attr_accessor :players, :cards_per_player, :cards_availables, :cards_collection
	def results
		players={}
		@players.times do |player|
			players[player]=get_cards
		end
		return players
	end
	def get_cards
		cards=self.cards_availables.sample(self.cards_per_player)
		self.cards_availables-= cards
		return cards
	end


end