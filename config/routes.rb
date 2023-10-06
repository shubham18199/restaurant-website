Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  resources :menu_items
  resources :reservations
  resources :orders
  resources :cart_items, only: [:index, :create, :destroy] do
    collection do
      post 'checkout'
    end
  end

  get '/', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/menu', to: 'pages#menu'
  get '/contact', to: 'pages#contact'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
