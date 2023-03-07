Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # see all tasks
  get "tasks", to: "tasks#index"

  # create a new task
  get "tasks/new", to: "tasks#new"

  # post the new task
  post "tasks", to: "tasks#create"

  # check the details of a task
  get "tasks/:id", to: "tasks#show", as: :task

  # edit a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  # update a task
  patch "tasks/:id", to: "tasks#update"

  # delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
