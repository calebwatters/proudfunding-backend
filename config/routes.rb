Rails.application.routes.draw do

  
  
 
 
  namespace :api do
    namespace :v1 do 
      resources :products
      resources :users
      resources :projects
      resources :cart_items
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end 
  end
end
