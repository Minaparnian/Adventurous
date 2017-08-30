Rails.application.routes.draw do




  root :to => 'pages#index'
  resources :users
  resources :images
  get '/images/:id/map' => 'images#map', :as => 'map'
  resources :comments



  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


end
