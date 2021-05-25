Rails.application.routes.draw do
  get '/', to: redirect('/home')
  root "home#index"
  get '/home', to: "home#index"
  get '/auth', to: 'users#auth'
  post '/tweets', to: 'tweets#create'
  get '/compose/tweet', to: 'tweets#new'
  post 'users', to: 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
