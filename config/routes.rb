Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#home'
  get 'tasks', to: 'tasks#index', as: :tasks

  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update', as: :update

  post 'tasks', to: 'tasks#create', as: :create
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
