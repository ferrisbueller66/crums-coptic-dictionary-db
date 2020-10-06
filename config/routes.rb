Rails.application.routes.draw do
  resources :meanings
  resources :references
  resources :dialects
  resources :dialectical_forms
  resources :entries
  resources :chapters
  root 'application#welcome'
  get "entries/new", to: "entries#new", as: "new_entry"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
