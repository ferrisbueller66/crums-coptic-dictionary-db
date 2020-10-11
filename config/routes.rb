Rails.application.routes.draw do
  resources :meanings
  resources :references
  resources :dialects
  resources :dialectical_forms
  resources :entries, only: [:show, :new, :create]
  resources :chapters
  root 'application#welcome'
  #get "/v1/meanings", to: "application#meanings", as: "application_meanings"
  get "dialectical_forms/:id", to: "dialectical_forms#show", as: "show_dialectical_form"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
