Rails.application.routes.draw do
  devise_for :usuarios

  root 'welcome#index'

  resources :empresas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
