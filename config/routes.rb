Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :folders, only: [:new, :create]
  end

  resources :folders, only: [:destroy, :update, :edit, :index, :show] do
    resources :notes, only: [:new, :create, :index]
  end

  resources :notes, only: [:destroy, :edit, :update, :show]

end
