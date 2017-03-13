Rails.application.routes.draw do

  resources :profiles
  get 'about', to: 'pages#about'
  get 'admin', to: 'pages#admin'

  resources :articles do
    resources :comments, only:[:create]
  end
  resources :issues
  resources :jobs
  resources :events
  resources :organisations
  resources :search
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
