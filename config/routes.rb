Rails.application.routes.draw do
  resources :entries
  resources :pages
  resources :chapters
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
