Rails.application.routes.draw do
  root to: 'divesites#index'
  resources :posts
  resources :divesites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
