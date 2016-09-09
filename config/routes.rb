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

end
