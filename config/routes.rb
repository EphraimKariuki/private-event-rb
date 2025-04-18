Rails.application.routes.draw do
  devise_for :users
  resources :events do
    resources :event_attendances, only: [ :create, :destroy ]
    resources :users, only: [ :index ]
  end
  resources :event_attendances
  resources :users do
    resources :event_attendances, only: [ :index ]
    resources :events
  end

  root "events#index"
end
