Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :tasks
  get "tasks", to: "task#index"
  get "tasks/new", to: "task#new", as: :new_task
  post "tasks", to: "task#create"
  get "tasks/:id", to: "task#show", as: :task
  get "tasks/:id/edit", to: "task#edit", as: :edit_task
  patch "tasks/:id/", to: "task#update"
  get "tasks/:id/destroy", to: "task#destroy", as: :destroy_task
end
