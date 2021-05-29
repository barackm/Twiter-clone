Rails.application.routes.draw do
  get '/profile/:id', to: "users#show"
  get '/', to: redirect('/home')
  get '/home', to: "tweets#index"
  devise_for :users
  resources :users, only: %i[show]
  resources :tweets do 
    resources :comments
  end
  resources :followers, only: [:create, :show]
  resources :likes, only: %i[create]
  resources :messages
  root "tweets#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
