class GamesController < ApplicationController
    skip_before_action :authorize, only: :index

    def index
        games = Game.all
        render json: games, status: :ok
    end

    def show
        game = Game.find_by(params[:id])
        if game
        render json: game, status: :ok
        else
        render json: { error: 'Game not found' }, status: :not_found
        end
    end

end
