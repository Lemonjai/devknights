Rails.application.routes.draw do
  devise_for :students
  devise_for :publishers
  devise_for :developers
  devise_for :active_admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
