class SchedulesController < ApplicationController
    skip_before_action :authorized

    def show
        schedule = Schedule.find_by(id: params[:id])
        render json: ScheduleSerializer.new(schedule).to_serialized_json
    end

    def index
        schedules = Schedule.all
        render json: ScheduleSerializer.new(schedules).to_serialized_json
    end
    
    def new
        schedule = Schedule.new
    end

    def create
        schedule = Schedule.create(date: Time.now, user_id: schedule_params[:user_id])
        render json: ScheduleSerializer.new(schedule).to_serialized_json
    end

    def schedule_params
        params.require(:schedule).permit(:user_id)
    end

end
