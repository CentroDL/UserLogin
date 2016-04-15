Rails.application.routes.draw do

  root "users#new"
  resources :users, only: [:new, :create]
  # resources :sessions, only: [:create, :destroy]
                              #log_in, #log_out

  post   '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

  get '/users/profile' => "users#profile", as: :profile
  get '/users/log_in' => "users#log_in", as: :log_in

end
