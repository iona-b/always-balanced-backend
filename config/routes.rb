Rails.application.routes.draw do
  resources :schedule_activities
  resources :schedules
  resources :schedule_tasks
  resources :tasks
  resources :user_relaxation_categories
  resources :activities
  resources :relaxation_categories
  resources :users
  post "/login", to: "users#login"
end
