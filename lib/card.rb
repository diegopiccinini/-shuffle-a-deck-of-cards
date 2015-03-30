class Card
	def initialize(card_value,suit)
		@id= card_value + ' of ' + suit
		@card_value=card_value
		@suit=suit
	end
	attr_accessor 	 :id, :card_value, :suit

end