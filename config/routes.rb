Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # get '/', to: "secrets#show"
    # get '/', to: "sessions#new"
    # post '/', to: "sessions#create"

    get 'secrets/new'

    root 'application#hello'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
  
    get '/secret' => 'secrets#show'
end
