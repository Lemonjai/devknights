Rails.application.routes.draw do
  
  devise_for :students

  get 'pages/show'

  resources :pages, only: [:show]

  root 'home#show'

  ActiveAdmin.routes(self)

  devise_for :developers, ActiveAdmin::Devise.config.merge({path: '/develop'})
  devise_for :publishers, ActiveAdmin::Devise.config.merge({path: '/publish'})
  devise_for :admin_users, ActiveAdmin::Devise.config
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
