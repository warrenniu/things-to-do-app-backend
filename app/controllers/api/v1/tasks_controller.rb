class Api::V1::TasksController < ApplicationController
  def index
    tasks = Task.all 
    render json: tasks, except: [:created_at, :updated_at]
  end

  def create
    task = Task.create(task_params)
    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_params)
    render json: task 
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy!
    render json: {}
  end

  private 

  def task_params 
    params.permit(:title, :description, :completed, :user_id)
  end

end
