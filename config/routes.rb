Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  resources :guests, only: [:index, :show, :new, :create]
  resources :episodes, only: [:index, :show]
  resources :appearances, only: [:new, :create]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
