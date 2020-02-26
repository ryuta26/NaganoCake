Rails.application.routes.draw do
  devise_for :admins
  devise_for :end_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :admin do
  	resources :items, only: [:index]
  end

  resources :end_users, only: [:show]
end
