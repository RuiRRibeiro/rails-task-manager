Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # List all tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  # Add a new task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  # View one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # Update task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # Destroy task
  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy_task

end
