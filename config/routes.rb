Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  #pages route
  get '/listwithus' => 'pages#listwithus'
  get '/findyourhome' => 'pages#findyourhome'
  get '/company' => 'pages#company'
  get '/contact' => 'pages#contact'

  #property routes
  get '/properties' => 'properties#index'
  post '/properties' => 'properties#index'
  get '/properties/new' => 'properties#new'
  post '/properties_favorite' => 'properties#create'
  get '/properties/:id' => 'properties#show'
  get '/properties/:id/edit' => 'properties#edit'
  patch '/properties/:id' => 'properties#update'
  delete '/properties/:id' => 'properties#destroy'

  #investor routes
  post '/investors' => 'investors#index'

  #buyer routes
  get '/buyers' => 'buyers#index'
  get '/buyers/new' => 'buyers#new'
  post '/buyers' => 'buyers#create'
  get '/buyers/:id' => 'buyers#show'
  get '/buyers/:id/edit' => 'buyers#edit'
  patch '/buyers/:id' => 'buyers#update'
  delete '/buyers/:id' => 'buyers#destroy'

  #charity routes
  resources :charities

  #donation routes
  get '/donations' => 'donations#index'
  get '/donations/new' => 'donations#new'
  post '/donations' => 'donations#create'
  get '/donations/:id' => 'donations#show'
  get '/donations/:id/edit' => 'donations#edit'
  patch '/donations/:id' => 'donations#update'
  delete '/donations/:id' => 'donations#destroy'

  #realtor routes
  get '/realtors' => 'realtors#index'
  get '/realtors/new' => 'realtors#new'
  post '/realtors' => 'realtors#create'
  get '/realtors/:id' => 'realtors#show'
  get '/realtors/:id/edit' => 'realtors#edit'
  patch '/realtors/:id' => 'realtors#update'
  delete '/realtors/:id' => 'realtors#destroy'

  #seller routes
  get '/sellers' => 'sellers#index'
  get '/sellers/new' => 'sellers#new'
  post '/sellers' => 'sellers#create'
  get '/sellers/:id' => 'sellers#show'
  get '/sellers/:id/edit' => 'sellers#edit'
  patch '/sellers/:id' => 'sellers#update'
  delete '/sellers/:id' => 'sellers#destroy'

  #authentication signup routes
  get '/signup' => 'users#new'
  post '/users' => 'users#create'


  #authentication login/logout routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  #user routes (for admins to view)
  get '/users' => 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

end
