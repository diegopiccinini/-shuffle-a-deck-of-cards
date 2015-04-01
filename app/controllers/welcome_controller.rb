class WelcomeController < ApplicationController
	def index
		@game=Game.new
	end
	def update_cards_per_player
		@max_cards_per_player = Game.get_maximun_cards_per_player(params[:players])
		respond_to do |format|
      format.js
    end
	end
	def update_game
		puts params[:cards_per_players]
		@game=Game.new(params[:players],params[:cards_per_player])
		render "index"
	end
end
