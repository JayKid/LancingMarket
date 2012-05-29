LancingMarket::Application.routes.draw do
  get "sessions/new"

  match 'login' => 'sessions#new', :as => "login"
  match 'logout' => 'sessions#destroy', :as => "logout"
  match 'register' => 'contractants#new', :as => "register"

  resources :contractants
  resources :sessions

  #Projects routing

  match "/projects/new" => "Projects#create"
  match "/projects/list" => "Projects#all"
  match "/projects/:id" => "Projects#show"

  root :to => 'Home#index'
end
