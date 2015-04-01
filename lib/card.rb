class Card
	def initialize(card_value,suit)
		@id= card_value + ' of ' + suit
		@card_value=card_value
		@suit=suit
	end
	attr_reader 	 :id, :card_value, :suit, :image
  class << self
  	def image(id)
  		id.tr(' ','_') + '.png'
  	end
  end
end