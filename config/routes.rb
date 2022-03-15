Rails.application.routes.draw do
  resources :users
  resources :distance_to_joeys
  resources :dishes
  resources :restaurants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
