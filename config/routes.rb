Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homepages#index'
   
 #homepage route
  get '/homepages' => 'homepages#index'

   #property routes
  get '/properties' => 'properties#index'
  get '/properties/new' => 'properties#new'
  post '/properties' => 'properties#create'
  get '/properties/:id' => 'properties#show' 
  get '/properties/:id/edit' => 'properties#edit'
  patch '/properties/:id' => 'properties#update'
  delete '/properties/:id' => 'properties#destroy'

   #buyer routes
  get '/buyers' => 'buyers#index'
  get '/buyers/new' => 'buyers#new'
  post '/buyers' => 'buyers#create'
  get '/buyers/:id' => 'buyers#show' 
  get '/buyers/:id/edit' => 'buyers#edit'
  patch '/buyers/:id' => 'buyers#update'
  delete '/buyers/:id' => 'buyers#destroy'

   #charity routes
  get '/charities' => 'charities#index'
  get '/charities/new' => 'charities#new'
  post '/charities' => 'charities#create'
  get '/charities/:id' => 'charities#show' 
  get '/charities/:id/edit' => 'charities#edit'
  patch '/charities/:id' => 'charities#update'
  delete '/charities/:id' => 'charities#destroy'

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
