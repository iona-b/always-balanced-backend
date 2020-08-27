Rails.application.routes.draw do
  resources :schedule_activities
  resources :schedules
  resources :schedule_tasks
  resources :tasks
  resources :user_relaxation_categories
  resources :activities
  resources :relaxation_categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
