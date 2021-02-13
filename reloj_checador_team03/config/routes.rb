Rails.application.routes.draw do
  resources :attendances
  resources :branches
  resources :employees
  post 'employees/search', :to => 'employees#search'
  post 'branches/search', :to => 'branches#search'
  root 'test#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
