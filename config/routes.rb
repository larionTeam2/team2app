Rails.application.routes.draw do
  get 'session/new'

  get 'login' => "session#new"

  post 'login' => "session#create"

  delete 'logout' => "session#destroy"

  get 'home' => 'home#index'

  
  resources :homes
  resources :pictures
  resources :users

  root 'home#index', as: 'home_index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
