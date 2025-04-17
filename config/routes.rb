Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users do
    resources :events
  end

  root "events#index"
end
