Rails.application.routes.draw do

  # devise_for :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: "signup"}
  root 'static_pages#home'
  get '/membres', to: 'static_pages#members', as: 'members'
  get '/skills/farming', to: 'static_pages#farming', as: 'farming'
  get '/skills/gathering', to: 'static_pages#gathering', as: 'gathering'
  resources :users, path: "membres"
  get "*path" => redirect("/")
  # as :user do
  #   get 'signin', to: 'devise/sessions#new', as: :new_user_session
  #   post 'signin', to: 'devise/sessions#create', as: :user_session
  #   delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
end
