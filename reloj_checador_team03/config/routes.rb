Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}
  resources :branches
  resources :employees
  resources :attendances
  get 'users/index'
  get 'reports/attendance_by_day'
  get 'reports/average_time_employees'
  get 'reports/absence_employee'
  post 'employees/search', :to => 'employees#search'
  post 'users/search', :to => 'users#search'
  post 'branches/search', :to => 'branches#search'
  root 'attendances#new'

  
end
