Rails.application.routes.draw do
  root to: "home#index"

  resources :materias, only: :index

  namespace :materias do
    resources :fisica, only: [:index, :show]
  end

end
