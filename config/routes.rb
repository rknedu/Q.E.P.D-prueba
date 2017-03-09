Rails.application.routes.draw do
  resources :quotes
  resources :componentes_plans
  resources :atributos_componentes
  resources :images
  resources :atributos
  resources :tipo_atributos
  resources :componentes
  resources :sedes
  resources :conditions
  resources :formas_de_pagos
  resources :components
  resources :constructions
  resources :locations
  resources :supports
  resources :espacios
  resources :burial_services
  resources :anforas
  resources :servicio_de_cinerarios
  resources :traslados
  resources :velatorios
  resources :urnas
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
  resources :empresas
  devise_for :usuarios, :controllers => { :registrations => 'registrations'}
  resources :usuario, :controller => "usuario"
  get '/usuarios/new'


  root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
