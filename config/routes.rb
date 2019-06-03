Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
  root to: 'texts#index'
  get '/texts', to: 'texts#index'
  get '/texts/:id', to: 'texts#show'
=======
  get '/texts', to: 'texts#index'
  root to: 'texts#index'
>>>>>>> master

end
