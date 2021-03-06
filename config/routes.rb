Rails.application.routes.draw do
  root to:'pages#home'

  get '/home' => 'pages#home'
  get '/feed' => 'pages#feed'
  get '/user_profile' => 'pages#user_profile'
  get '/add_photos' => 'pages#add_photos'
  post '/add_photos' => 'pages#add_photos'
  delete '/delete' => 'pages#delete'

  # devise_for :users
  devise_for :users, controllers: { 
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    # confirmations: 'users/confirmations',
    # omniauthcallbacks: 'users/omniauthcallbacks',
    # passwords: 'users/passwords',
    # unlocks: 'users/unlocks'
  }
  # 
  # devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/' => 'users#index'
end
