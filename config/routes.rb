Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'
  get '/membres', to: 'static_pages#members', as: 'members'
  get '/skills/potion', to: 'static_pages#potion', as: 'potion'
  resources :users
  get "*path" => redirect("/")
end
