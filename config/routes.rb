Rails.application.routes.draw do
  get '/', to: 'home#index'
  post '/users', to: 'users#create'
  post '/posts', to: 'posts#create'
  get '/posts', to: 'posts#list'
  put '/posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#delete'
end
