class GamesController < ApplicationController
    skip_before_action :authorize, only: [:index, :show]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        games = Game.all
        render json: games, each_serializer: CustomGameSerializer, status: :ok
        #need to use each serializer when using a custom route for collections
    end

    def show
        game = Game.find(params[:id])
        render json: game, status: :ok
    end

    def create
        game = Game.create!(game_params)
        render json: game, status: :created
    end

    private

    def render_not_found_response
        render json: { error: "Game not found" }, status: :not_found
    end
    
    def game_params
        params.permit(:title, :platform, :genre, :img_url, :price)
    end

end
