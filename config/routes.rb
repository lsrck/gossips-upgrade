Rails.application.routes.draw do
  get 'chitchats/index'
  root "chitchats#index"
  devise_for :users
  resources :chitchats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
