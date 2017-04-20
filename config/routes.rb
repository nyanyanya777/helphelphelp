Rails.application.routes.draw do
  devise_for :users
  resources :helps, only: [:new, :create, :index,]
  root 'helps#index'

end
