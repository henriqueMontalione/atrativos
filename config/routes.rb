Rails.application.routes.draw do
  root :to =>'users#index'
  devise_for :users, :controllers => {:registrations => "users"}
  resources :users
  resources :atractives
end
