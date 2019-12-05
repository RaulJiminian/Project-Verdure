Rails.application.routes.draw do
  post '/users/login', to: 'authentication#login'
  get '/users/verify', to: 'authentication#verify'
  
  resources :users
  resources :recipes do
    resources :recipe_comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/users/:user_id/recipes', to: 'recipes#index_by_user'
  post '/users/:user_id/recipes', to: 'recipes#create_by_user'
end