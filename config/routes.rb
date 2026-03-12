Rails.application.routes.draw do
  get "checkins/new"
  get "checkins/create"
  get "challenges/index"
  get "challenges/show"
  get "challenges/new"
  get "challenges/create"
  root "home#index"

  resource :session
  resource :registration, only: [:new, :create]
  resources :passwords, param: :token
  resources :challenges, only: [:index, :show, :new, :create] do
    resources :checkins, only: [:new, :create]
  end

  get "up" => "rails/health#show", as: :rails_health_check
end

