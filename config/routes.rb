Rails.application.routes.draw do

  resources :events, path: "evenements", :except => [:show] do
    member do
      post :addname
      post :removename
    end
  end
  # devise_for :users
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: "signup"}
  root 'static_pages#home'
  get '/membres', to: 'static_pages#members', as: 'members'
  # get 'evenements', to: 'static_pages#evenements', as: 'evenements'
  get '/skills/farming', to: 'static_pages#farming', as: 'farming'
  get '/skills/gathering', to: 'static_pages#gathering', as: 'gathering'
  get '/skills/mage-weapon-crafting', to: 'static_pages#mageweaponcrafting', as: 'mageweaponcrafting'
  get '/skills/hunter-weapon-crafting', to: 'static_pages#hunterweaponcrafting', as: 'hunterweaponcrafting'
  get '/skills/warrior-weapon-crafting', to: 'static_pages#warriorweaponcrafting', as: 'warriorweaponcrafting'
  get '/skills/tool-crafting', to: 'static_pages#toolcrafting', as: 'toolcrafting'
  get '/skills/cloth-crafting', to: 'static_pages#clothcrafting', as: 'clothcrafting'
  get '/skills/leather-crafting', to: 'static_pages#leathercrafting', as: 'leathercrafting'
  get '/skills/plate-crafting', to: 'static_pages#platecrafting', as: 'platecrafting'
  resources :users, path: "membres"
  get "*path" => redirect("/")
  # as :user do
  #   get 'signin', to: 'devise/sessions#new', as: :new_user_session
  #   post 'signin', to: 'devise/sessions#create', as: :user_session
  #   delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
end
