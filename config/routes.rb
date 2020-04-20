Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :books, only: [:new,:create,:destroy,:edit,:update]
end
