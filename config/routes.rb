Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post '/signup', to: 'users#create'

  # resources :users, only: [:show] this route does not work for some reason but the one below it does for staying logged in
 
  get "/me", to: "users#show"

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 

  resources :games, only: [:index, :show, :create] do
    resources :reviews, only: [:update, :destroy, :create, :show]
  end

  # resources :reviews, except: [:index, :create, :update, :destroy, :show]


end
