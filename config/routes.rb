Rails.application.routes.draw do
  devise_for :users,controllers:{
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  get "users/sign_up"
  resources :helps, only: [:new, :create, :index,]
  root 'helps#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
