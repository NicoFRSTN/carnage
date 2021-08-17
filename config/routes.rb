Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cars, only:[:index, :show, :new, :create, :destroy] do
    resources :bookings, only:[:new, :create,]
  end
  resources :bookings, only:[:index, :show, :destroy]
end
