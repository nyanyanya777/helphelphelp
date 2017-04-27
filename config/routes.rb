Rails.application.routes.draw do
  devise_for :users
  resources :helps, only: [:new, :create, :index,]
  root 'helps#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
