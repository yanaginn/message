Rails.application.routes.draw do
  resources :acceptances, only: [:new, :create]
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
