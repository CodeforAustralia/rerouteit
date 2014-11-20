Rails.application.routes.draw do
  root "trips#index"

  resources :trips, only: [:index, :create]
end
