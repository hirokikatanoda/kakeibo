Rails.application.routes.draw do
  root 'accounts#index'

  resources :accounts

  get '/accoount', to: 'accounts#edit_show', as: :edit_show
  get '/accoount/:id', to: 'accounts#delete_show', as: :delete_show
  get '/accoount/:id', to: 'accounts#destroy', as: :destroy

end
