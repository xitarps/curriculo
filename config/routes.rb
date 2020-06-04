Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  get 'dashboard', to: 'pages#dashboard'

  get 'personal_info', to: 'personal_info#display'
  get 'edit_personal_info', to: 'personal_info#edit'
  patch 'edit_personal_info', to: 'personal_info#update'

  resources :languages, , only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
