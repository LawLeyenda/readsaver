Rails.application.routes.draw do
  
    devise_for :users
    resources :users do
      resources :comments
    end
  get '/home' => 'pages#home'
  get '/hoot' => 'pages#hoot'

  get '/login' => 'pages#login'
  get '/book' => 'pages#book'
  get '/followers' => 'pages#followers'
  get '/following' => 'pages#following'
  get '/settings' => 'pages#settings'
  root 'pages#home'
    post '/likes/:post_id', to: 'posts#add_like', as: "add_likes"
    root 'posts#index'


end
