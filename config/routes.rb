Rails.application.routes.draw do
  root "home#index"
  get '/signup', to: 'users#signup'
  get '/login', to: 'users#login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
