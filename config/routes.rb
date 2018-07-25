Rails.application.routes.draw do
  root :to =>'atractives#index'
  devise_for :users, :controllers => {:registrations => "users"}
  resources :users
  resources :atractives
end
