Rails.application.routes.draw do  
  resources :users

  #resources :homes
  resources :pictures
  
  root 'home#index', as: "home_index"

  #get '/Home', to: "home#index"
  get '/about', to: 'home#about'
  get '/Register', to: 'users#new'
  #get '/Login', to: 'users#index'

  get 'session/new'

  get 'login' => "session#new"

  post 'login' => "session#create"

  delete 'logout' => "session#destroy"

  get 'home' => 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
