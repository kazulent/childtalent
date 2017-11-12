Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  root to: "top#index"
  resources :tweets, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :likes, only: [:create, :destroy]
    resources :pretties, only: [:create, :destroy]
    resources :katachis, only: [:create, :destroy]
    resources :iros, only: [:create, :destroy]
  end
end
