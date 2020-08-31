class TasksController < ApplicationController
    skip_before_action :authorized

    def show
        task = Task.find_by(id: params[:id])
        render json: TaskSerializer.new(task).to_serialized_json
    end

    def index
        tasks = Task.all
        render json: TaskSerializer.new(tasks).to_serialized_json
    end
    
    def new
        task = Task.new
    end

    def create
        task = Task.create(task_params)
        render json: TaskSerializer.new(task).to_serialized_json
    end

    def task_params
        params.permit(:task_description, :task_notes, :user_id, :task)
    end

end
