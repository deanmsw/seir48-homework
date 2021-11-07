Rails.application.routes.draw do

get '/battles' => 'battles#index'

#new
get '/battles/new' => 'battles#new', :as => :new_battle

post '/battles' => 'battles#create'
#show
get '/battles/:id' => 'battles#show', :as => :battle


#edit
get '/battles/:id/edit' => 'battles#edit', :as => :edit_battle

#update
post '/battles/:id' => 'battles#update'
#delete

delete '/battles/:id' => 'battles#delete'











end
