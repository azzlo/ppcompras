Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :users
  resources :offers
  resources :requisitions do
    member do
      post 'set_active_status'
    end
  end
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
