Rails.application.routes.draw do
  get '/profile/:id', to: "users#show"
  devise_for :users
  resources :users, only: %i[show]
  resources :tweets
  root "tweets#index"
  get '/', to: redirect('/home')
  get '/home', to: "tweets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
