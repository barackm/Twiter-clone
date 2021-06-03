# frozen_string_literal: true

Rails.application.routes.draw do
  get 'notifications/index'
  get '/profile/:id', to: 'users#show'
  get '/', to: redirect('/home')
  get '/home', to: 'tweets#index'
  devise_for :users
  resources :users, only: %i[show]
  resources :tweets do
    resources :comments
  end
  resources :followers, only: %i[create show]
  resources :likes, only: %i[create]
  resources :messages
  resources :notifications
  root 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
