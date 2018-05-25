Rails.application.routes.draw do
  resources :educations
  resources :summaries
  resources :projects
  resources :skill_groups
  resources :skills
  resources :users
  #get 'github/index'

  root 'landing_page#welcome'
  get '/wordpress_preview', to: 'wordpress_preview#index'
  get '/github', to: 'github#index'
  get '/auth/:provider/callback', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
