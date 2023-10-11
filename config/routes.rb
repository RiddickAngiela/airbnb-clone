Rails.application.routes.draw do
  resources :reviews
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'pages/contant'
  get 'pages/services'
  get 'pages/about'
  devise_for :users
  resources :posts
  resources :listings do
  member do
    post 'create_picture'
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # config/routes.rb

resources :pictures, only: [:index, :show, :new, :create, :edit, :update, :destroy]

   root "posts#index"
  
resources :users do
  member do
    put 'update_profile_image'
  end
end

resources :pictures do
  member do
    post 'like'
    delete 'unlike'
  end
end



 put 'users/update_profile_image', to: 'users#update_profile_image', as: 'update_profile_image'
 resources :reviews
  resources :listings, only: [:show, :edit], as: :listing
  resources :bookings, only: [:new, :create, :destroy]
  get 'about', to: 'pages#about'
  get 'services', to: 'pages#services'
  get 'contact', to: 'pages#contact'
  post 'contact', to: 'contact#create'
  get '/search', to: 'search#index', as: 'search'
  get '/explore', to: 'explore#index', as: 'explore'
  delete '/signout', to: 'sessions#destroy', as: :signout
  
end
