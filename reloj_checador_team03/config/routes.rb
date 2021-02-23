Rails.application.routes.draw do
  resources :checks
  #devise_for :users
  #resources :attendances
  resources :branches
  resources :employees
  #resources :reports
  post 'employees/search', :to => 'employees#search'
  post 'branches/search', :to => 'branches#search'
  get 'reports/stats_per_day', :to => 'reports#stats_per_day'
  get 'reports/absence_per_month', :to => 'reports#absence_per_month'
  get 'reports/average_time', :to => 'reports#average_time'
  root 'test#index'
  mount ReportsKit::Engine, at: 'reports/average_time'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
