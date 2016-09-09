Rails.application.routes.draw do

  devise_for :users
root to: 'home#index'

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
end
