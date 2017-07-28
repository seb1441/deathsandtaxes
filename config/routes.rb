Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'
  get '/membres', to: 'static_pages#members', as: 'members'
  resources :users
  get "*path" => redirect("/")
end
