class ApplicationController < ActionController::API
  include ActionController::Cookies

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

before_action :authorize
#putting before acction in application controller will run authorize for every controller inheriting from application controller

private

def authorize
  @current_user = User.find_by(id: session[:user_id])

  render json: { errors: ['Not authorized'] }, status: :unauthorized unless @current_user
  #will return error unless current user is true(has a value except false or nil)
end

def render_unprocessable_entity_response(exception)
  render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
end

end
