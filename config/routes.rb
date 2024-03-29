Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "tasks", to: "tasks#index", as: :tasks
  # go to create a task page
  get "tasks/new", to: "tasks#new", as: :new_task

  # edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"
  get "tasks/:id", to: "tasks#show", as: :task

  # post a new task
  post "tasks", to: "tasks#create"

  # delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
