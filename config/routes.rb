Rails.application.routes.draw do




  root :to => 'users#new'
  resources :users
  resources :images
  resources :comments


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
