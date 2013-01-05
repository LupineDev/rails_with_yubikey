RailsWithYubikey::Application.routes.draw do
  devise_for :users

  resources :lemurs

  root :to => 'lemurs#index'

  # See how all your routes lay out with "rake routes"
end
