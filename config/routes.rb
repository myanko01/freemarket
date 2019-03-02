Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items
  resources :categories
  resources :users do
    resources :cards, only: [:index, :new, :create, :destroy]
  end
  resources :brands
end

