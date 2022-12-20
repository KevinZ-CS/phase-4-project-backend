class ReviewsController < ApplicationController

    def show
        review = Review.find(params[:id])
        render json: review, status: :ok
    end

    def create
        review = Review.create!(review_params)
        render json: review, status: :created
    end

    def update
        review = Review.find_by(id: params[:id])
        if review.user_id == @current_user.id
            review.update!(review_params)
            render json: review, status: :ok
        else
            render json: { errors: "Cannot edit other user's comment." }, status: :unauthorized
        end
    end

    def destroy
        review = Review.find_by(id: params[:id])
        if review.user_id == @current_user.id
            review.destroy
            render json: { sucess: 'Review has been deleted.' }, status: :ok
        else
            render json: { errors: "Cannot delete other user's comment." }, status: :unauthorized
        end
    end



    private

    def review_params
        params.permit(:score, :comment, :game_id, :user_id)
    end
end
