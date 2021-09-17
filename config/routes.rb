Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'tasks/index'
  get 'tasks/create'
  get 'tasks/update'
  get 'tasks/destroy'
  namespace :api do
    namespace :v1 do 
      resources :tasks
      resources :users, only: [:index, :show, :create]
    end
  end
end
