Rails.application.routes.draw do
  get 'comments/create'

  devise_for :users,controllers:{
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  get "users/sign_up"
  resources :helps do
    resources :comments
  end
  root 'helps#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
