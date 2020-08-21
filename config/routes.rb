Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'plaincv', to: 'pages#plaincv'

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  get 'dashboard', to: 'pages#dashboard'

  get 'personal_info', to: 'personal_info#display'
  get 'edit_personal_info', to: 'personal_info#edit'
  patch 'edit_personal_info', to: 'personal_info#update'

  resources :users, only: [:edit, :update]
  resources :tools
  resources :career_infos
  resources :courses
  resources :languages, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :academics, only: [:index, :new, :create, :edit, :update, :destroy]

  get 'visitors', to: 'pages#visitors'

  get 'visitors_json', to: 'pages#visitors_json'
  get 'visitors_json_today', to: 'pages#visitors_json_today'
  get 'visitors_json_week', to: 'pages#visitors_json_week'
  get 'visitors_json_yesterday', to: 'pages#visitors_json_yesterday'

  resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]

end
