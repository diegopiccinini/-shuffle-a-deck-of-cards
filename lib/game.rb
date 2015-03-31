class Game
	MINIMUN_CARDS = 1
	MINIMUN_PLAYERS= 1
	MAXIMUN_PLAYERS = 52
	PLAYERS = 2
	CARDS_PER_PLAYER = 3
	SUITS = ['spades', 'hearts', 'diamonds', 'clubs']
	CARDS_VALUES = ['A','2','3','4','5','6','7','8','9','10','J','Q','K']

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
		@maximun_cards = @cards_collection.count / players

	end
	attr_accessor :players, :cards_per_player, :cards_availables, :cards_collection, :maximun_cards
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