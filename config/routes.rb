Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  resources :wines, only: [:new, :create]

  resources :users, only: :show do
    get 'wines', to: 'wines#user_wines'
  end

  root to: 'users#index'
end
