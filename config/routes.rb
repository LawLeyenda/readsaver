Rails.application.routes.draw do
  
    devise_for :users
    
  get '/home' => 'pages#home'
  get '/hoot' => 'pages#hoot'

  get '/login' => 'pages#login'
  get '/book' => 'pages#book'
  get '/followers' => 'pages#followers'
  get '/following' => 'pages#following'
  get '/settings' => 'pages#settings'
    
    post '/likes/:post_id', to: 'posts#add_like', as: "add_likes"
    root 'comments#index'

  resources :comments,          only: [:create, :destroy]
end
