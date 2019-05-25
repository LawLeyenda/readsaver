Rails.application.routes.draw do
  
  devise_for :users
  
  as :users do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new" # custom path to sign_up/registration
  end
  
  get '/home' => 'pages#home'
  get '/hoot' => 'pages#hoot'
  get '/login' => 'pages#login'
  get '/book' => 'pages#book'
  get '/followers' => 'pages#followers'
  get '/following' => 'pages#following'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
