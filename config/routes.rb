Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  resources :wines, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
    resources :tasting_sheets, only: [:new, :create]
  end

  resources :users, only: :show do
    get 'wines', to: 'wines#user_wines'
  end

  root to: 'wines#user_wines'

end
