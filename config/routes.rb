Rails.application.routes.draw do
  root 'welcome#home'
  resources :users, only: [:new, :create]

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
end
