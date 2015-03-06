Rails.application.routes.draw do
  root 'welcome#index'

  resources :rawnames

  resources :data

end
