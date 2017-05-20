Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index_supplier'
  devise_for :users
  resources :users
  resources :offers
  resources :requisitions do
    member do
      post 'set_active_status'
      get 'show_supplier'
      post 'set_as_received'
    end
    resources :offers do
      member do
        get 'set_as_recommended'
        post 'set_selected'
      end
    end
  end
  devise_for :suppliers
  resources :suppliers do
    member do
      get 'authorize_data'
    end
  end
  resource :supplier do
    collection do
      get 'myaccount'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
