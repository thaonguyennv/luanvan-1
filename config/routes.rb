Rails.application.routes.draw do
  resources :passengers
  resources :investment_contract_dets
  resources :car_rental_contract_dets
  resources :the_drivers
  resources :investment_contracts
  resources :car_rental_contracts
  resources :members
  resources :customers
  resources :drivers
  resources :cars
  resources :model_cars
  resources :brands
  devise_for :admins
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
