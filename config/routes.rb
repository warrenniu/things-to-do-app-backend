Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'tasks/index'
  get 'tasks/create'
  get 'tasks/update'
  get 'tasks/destroy'
  namespace :api do
    namespace :api do 
      resources :tasks
      resources :users, only: [:index, :create]
    end
  end
end
