class ScheduleTasksController < ApplicationController
    skip_before_action :authorized

    def show
        schedule_task = ScheduleTask.find_by(id: params[:id])
        render json: ScheduleTaskSerializer.new(schedule_task).to_serialized_json
    end

    def index
        schedule_tasks = ScheduleTask.all
        render json: ScheduleTaskSerializer.new(schedule_tasks).to_serialized_json
    end
    
    def new
        task = ScheduleTask.new
    end

    def create
        schedule_task = ScheduleTask.create(schedule_task_params)
        render json: ScheduleTaskSerializer.new(schedule_task).to_serialized_json
    end

    def schedule_task_params
        params.permit(:schedule_id, :task_id, :schedule_task)
    end

end
