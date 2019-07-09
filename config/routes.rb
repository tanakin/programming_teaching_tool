Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :texts, only: [:index, :show] do
    resource :understandings, only: [:update, :destroy]
  end
  
  resources :users, only: [:show]
  root to: 'texts#index'

end
