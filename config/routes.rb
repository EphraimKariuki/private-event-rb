Rails.application.routes.draw do
  devise_for :users
  resources :events, only: [ :index, :show ]
  
  root "events#index"

  
end
