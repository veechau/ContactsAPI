Rails.application.routes.draw do
  resources :users, only: [:create, :destroy, :index, :show, :update] do
    resources :contacts, only: :index do
      get 'favorite_contact'
    end
    resources :comments
  end

  resources :contacts, only: [:create, :destroy, :show, :update, :edit, :new] do
    resources :comments
  end

  resources :contact_shares, only: [:destroy, :create]




end
