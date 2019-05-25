Rails.application.routes.draw do
  
  devise_for :user
  

  
  get '/home' => 'pages#home'
  get '/hoot' => 'pages#hoot'
  get '/login' => 'pages#login'
  get '/book' => 'pages#book'
  get '/followers' => 'pages#followers'
  get '/following' => 'pages#following'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
