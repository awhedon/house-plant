Rails.application.routes.draw do

  
  
  get 'comments/index'
  resources :users do
  # , :only => [:new, :create, :edit, :update, :show]
    resources :plants
    
  end
  

  root to: "static#welcome"

  get 'signin' => "sessions#new"
  post '/sessions' => "sessions#create"
  get '/logout' => "sessions#destroy" 
  get '/auth/:provider/callback', to: 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
