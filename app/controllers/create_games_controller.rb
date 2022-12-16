class Games::CreateGamesController < ApplicationController

    def create
        game = Game.create!(game_params)
        render json: :games, status: :created
    end

    private

    def game_params
        params.permit(:title, :platform, :genre, :img_url, :price)
    end

end
