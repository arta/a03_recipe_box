Rails.application.routes.draw do
  devise_for :users
  resources :recipes
  # get 'recipes',          to:'recipes#index'
  # get 'recipes/new',      to:'recipes#new',  as:'new_recipe' # precede greedy 'recipes/:some_variable'
  # post 'recipes',         to:'recipes#create'
  # get 'recipes/:id',      to:'recipes#show', as:'recipe'
  # get 'recipes/:id/edit', to:'recipes#edit', as:'edit_recipe'
  # patch 'recipes/:id',    to:'recipes#update'
  # put 'recipes/:id',      to:'recipes#update'
  # delete 'recipes/:id',   to:'recipes#destroy'

  root 'recipes#index'
end
