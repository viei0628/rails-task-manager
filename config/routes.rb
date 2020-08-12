Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all
  get "/tasks/new", to: "tasks#new", as: "new_task"
  # save created taks
  post "/tasks", to: "tasks#create"

  get "/tasks", to: "tasks#index"
  # read one
  get "/tasks/:id", to: "tasks#show", as: "task"
  # select task to update
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  # update task
  patch "/tasks/:id", to: "tasks#update"
  # delete task
  delete "/tasks/:id", to: "tasks#destroy"
end
