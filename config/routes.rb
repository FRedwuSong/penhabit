Rails.application.routes.draw do
  resources :pens
  root :to => "pens#index"
end
