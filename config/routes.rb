Rails.application.routes.draw do
  root 'landing_page#welcome'
  get '/wordpress_preview/index', to: 'wordpress_preview#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
