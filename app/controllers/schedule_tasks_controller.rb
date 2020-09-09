class ScheduleTasksController < ApplicationController
    skip_before_action :authorized

    def show
        @schedule_task = ScheduleTask.find_by(id: params[:id])
        render json: ScheduleTaskSerializer.new(@schedule_task).to_serialized_json
    end

    def index
        @schedule_tasks = ScheduleTask.all
        render json: ScheduleTaskSerializer.new(@schedule_tasks).to_serialized_json
    end
    
    def new
        @schedule_task = ScheduleTask.new
    end

    def create
        sleep 1
        schedule_id = Schedule.last.id
        @schedule_task = ScheduleTask.create(task_id: params[:task_id], schedule_id: schedule_id)
        if @schedule_task.valid?
            render json: ScheduleTaskSerializer.new(@schedule_task).to_serialized_json
        else
            render json: { error: @schedule_task.errors.full_messages }, status: :not_acceptable
        end
    end

    def schedule_task_params
        params.permit(:schedule_id, :task_id, :schedule_task)
    end

end
