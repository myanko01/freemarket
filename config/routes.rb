Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'items#index'
  resources :items
  resources :categories, only: [:index, :show]
  resources :users, except: [:index, :destroy] do
    collection do
      get :registration, :confirmation, :address, :pay, :done
    resources :cards, only: [:index, :new, :create, :destroy]
  end
  resources :brands, only: [:index, :show]
end
end

