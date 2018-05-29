Rails.application.routes.draw do
  devise_for :users 
  resources :pens

  resources :users, only: [:edit,:update] do
    member do 
      get :pens
    end
  end
  
  root :to => "pens#index"
end
