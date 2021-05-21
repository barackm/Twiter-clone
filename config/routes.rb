Rails.application.routes.draw do
  get '/', to: redirect('/home')
  root "home#index"
  get '/home', to: "home#index"
  get '/signup', to: 'users#signup'
  get '/login', to: 'users#login'
  post '/tweets', to: 'tweets#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
