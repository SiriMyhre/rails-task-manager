Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read all the restaurants
  get "tasks", to: "tasks#index"


  # Create one restaurant
  # 1st request to get the form
  get "tasks/new", to: "tasks#new", as: "new_task"
  # Read one restaurant
  get "tasks/:id", to: "tasks#show", as: "task"
  # 2nd request to post the param
  post "tasks", to: "tasks#create"

  # Update one resturant
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "tasks/:id", to: "tasks#update"

  # Delete
  delete "tasks/:id", to: "tasks#destroy"

end
