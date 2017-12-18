Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'animals#index'

  #catz
  get '/cats' => 'cats#index'
  get '/cats/new' => 'cats#new'
  post '/cats' => 'cats#create'
  get '/cats/:id' => 'cats#show', as: 'cat'
  get '/cats/:id/edit' => 'cats#edit', as: :edit_cat
  put '/cats/:id' => 'cats#update'

  #dawgs

  get '/dogs' => 'dogs#index'
  get '/dogs/new' => 'dogs#new'
  post '/dogs' => 'dogs#create'
  get '/dogs/:id' => 'dogs#show', as: 'dog'
  get '/dogs/:id/edit' => 'dogs#edit', as: :edit_dog
  put '/dogs/:id' => 'dogs#update'


end
