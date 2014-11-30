Rails.application.routes.draw do
  root to: "home#index"

  resources :materias, only: :index
  resources :bibliografia, only: :index
  resources :contacto, only: :index

  namespace :materias do
    resources :fisica, only: [:index, :show]
  end
  end
