Rails.application.routes.draw do
  devise_for :users 
  resources :pens
  root :to => "pens#index"
end
