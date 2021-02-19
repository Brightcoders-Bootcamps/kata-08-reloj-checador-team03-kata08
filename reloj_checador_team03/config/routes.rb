Rails.application.routes.draw do
  #devise_for :users
  #resources :attendances
  resources :branches
  resources :employees
  #resources :stats_per_day
  post 'employees/search', :to => 'employees#search'
  post 'branches/search', :to => 'branches#search'
  root 'test#index'
  mount ReportsKit::Engine, at: '/'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
