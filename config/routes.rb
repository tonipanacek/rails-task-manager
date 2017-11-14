Rails.application.routes.draw do
  # create --> new
  get 'tasks/new', to:'tasks#new', as: :new_task

  # read --> index
  get 'tasks', to: 'tasks#index', as: :tasks

  # read --> show
  get 'tasks/:id', to: 'tasks#show', as: :task

  # create --> create
  post 'tasks', to: 'tasks#create'

  # update --> edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # update --> update
  patch 'tasks/:id', to: 'tasks#update'

  # delete --> destroy
  delete 'tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
