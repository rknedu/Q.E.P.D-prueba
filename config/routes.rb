Rails.application.routes.draw do
  devise_for :usuarios
  get 'freelancers/index'

  get 'creatives/index'

  get 'static_pages/index'

  get 'stylish_portfolios/index'

  root 'stylish_portfolios#index'

  resources :empresas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
