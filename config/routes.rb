Squeezecam::Application.routes.draw do
  root "welcome#index"
  resources :dashboard, only: [:index]
  
  devise_for :users
end
