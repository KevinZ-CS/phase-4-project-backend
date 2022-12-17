Rails.application.routes.draw do
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post '/signup', to: 'users#create'

  resources :users, only: [:show] do
  # get '/me', to: 'users#show' do
      resources :create_games, only: [:create]
      resources :reviews
  end

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 

  # get '/', to: 'games#index'
  resources :games, only: [:index, :show]



end
