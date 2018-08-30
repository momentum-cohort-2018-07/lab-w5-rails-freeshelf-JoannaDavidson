Rails.application.routes.draw do

  resources :books, :users
  resource :session, only: [:new, :create, :destroy]
  get '/logout' => 'sessions#destroy'

  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
