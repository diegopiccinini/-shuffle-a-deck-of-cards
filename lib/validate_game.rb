class ValidateGame
	class << self
		def parse_and_validate(players, cards_per_player)
			begin
				players = Integer(players)
				cards_per_player= Integer(cards_per_player)

			rescue
				raise TypeError
			end
			raise ToManyPlayersError if players > Game::MAXIMUN_PLAYERS
			raise NotEnoughPlayersError if players < Game::MINIMUN_PLAYERS
			raise ToManyCardsPerPlayerError if cards_per_player > Game::TOTAL_CARDS
			raise NotEnoughCardsPerPlayersError if cards_per_player < Game::MINIMUN_CARDS
			raise TooManyCardsDemandedError if (players * cards_per_player) > Game::TOTAL_CARDS
			[players,cards_per_player]
		end
	end
end