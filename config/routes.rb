Squeezecam::Application.routes.draw do
  root "welcome#index"

  resources :dashboard, only: [:index]
  
  resources :photos, only: [:new, :create]

  devise_for :users

end
