Rails.application.routes.draw do
  resources :directions
  resources :plans
  resources :conditions
  resources :tipo_clientes
  resources :type_plans
  resources :publications
  resources :type_publications
  resources :roles
  resources :servicios
  resources :componentes
  resources :caracteristicas
  resources :telefonos
  resources :tipo_empresas
  resources :comunas
  resources :regions
  devise_for :usuarios

  root 'welcome#index'

  resources :empresas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
