class SchedulesController < ApplicationController
    before_action :authorized, only: [:create]

    def show
        @schedule = Schedule.find_by(id: params[:id])
        render json: ScheduleSerializer.new(@schedule).to_serialized_json
    end

    def index
        @schedules = Schedule.all
        render json: ScheduleSerializer.new(@schedules).to_serialized_json
    end
    
    def new
        @schedule = Schedule.new
    end

    def create
        @schedule = Schedule.create(date: Time.now, user_id: schedule_params[:user_id])
        if @schedule.valid?
            render json: ScheduleSerializer.new(@schedule).to_serialized_json
        else
            render json: { error: @schedule.errors.full_messages }, status: :not_acceptable
        end
    end

    def destroy
        @schedule = Schedule.find_by(id: params[:id]).destroy
        if @schedule.valid?
            render json: ScheduleSerializer.new(@schedule).to_serialized_json
        else
            render json: { error: @schedule.errors.full_messages }, status: :not_acceptable
        end
    end

    def schedule_params
        params.require(:schedule).permit(:user_id)
    end

end
