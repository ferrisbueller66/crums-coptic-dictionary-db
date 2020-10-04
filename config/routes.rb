Rails.application.routes.draw do
  resources :references
  resources :dialects
  resources :dialectical_forms
  resources :entries
  resources :chapters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
