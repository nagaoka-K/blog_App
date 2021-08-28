Rails.application.routes.draw do
  devise_for :users
  root to:"posts#index"
  resources :posts, exept:[:index]
  resources :users, only:[:show]
end
