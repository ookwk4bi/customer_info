Rails.application.routes.draw do
  resources :customers do
    collection do
      get 'search'
    end
  end
  root 'customers#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
