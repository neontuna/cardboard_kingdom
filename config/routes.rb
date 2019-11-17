Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :products

      root to: "users#index"
    end
  devise_for :users, :skip => [:registrations]                                          
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'    
    put 'users' => 'devise/registrations#update', :as => 'user_registration'         
  end
  
  resources :products, only: [:index]
  resources :checkouts, only: [:create] do
    collection do
      get 'success'
      get 'cancel'
    end
  end
  
  root to: 'products#index'
end
