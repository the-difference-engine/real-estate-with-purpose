Rails.application.routes.draw do

  devise_for :users
root to: 'admins#index'

#admin routes
get '/admins' => 'admins#index'
get '/admins/new' => 'admins#new'
post '/admins' => 'admins#create'
get '/admins/:id' => 'admins#show' 
get '/admins/:id/edit' => 'admins#edit'
patch '/admins/:id' => 'admins#update'
delete '/admins/:id' => 'admins#destroy'

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
end
