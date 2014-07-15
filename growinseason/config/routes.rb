Rails.application.routes.draw do
  # get 'welcome/index'

  devise_for :users

  root to: 'welcome#index'

  resources :community_shares, except: [:new, :edit]
  resources :vegetables
  resources :harvests


end
