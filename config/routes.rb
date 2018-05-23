Rails.application.routes.draw do
  resources :skill_groups
  resources :skills
  #get 'github/index'

  root 'landing_page#welcome'
  get '/wordpress_preview', to: 'wordpress_preview#index'
  get '/github', to: 'github#index'
  get 'signup', to: 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
