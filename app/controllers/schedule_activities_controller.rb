class ScheduleActivitiesController < ApplicationController
    skip_before_action :authorized

    def show
        schedule_activity = ScheduleActivity.find_by(id: params[:id])
        render json: ScheduleActivitySerializer.new(schedule_activity).to_serialized_json
    end

    def index
        schedule_activitys = ScheduleActivity.all
        render json: ScheduleActivitySerializer.new(schedule_activitys).to_serialized_json
    end
    
    def new
        activity = ScheduleActivity.new
    end

    def create
        @valid_activity = ScheduleActivity.ensure_unique_activities(params[:relaxation_category_id], params[:schedule_id])
        @schedule_activity = ScheduleActivity.create(schedule_id: schedule_activity_params[:schedule_id], activity_id: @valid_activity.id)
        if @schedule_activity.valid?
            render json: ScheduleActivitySerializer.new(@schedule_activity).to_serialized_json
        else
            render json: { error: @schedule_activity.errors.full_messages }, status: :not_acceptable
        end
    end

    def schedule_activity_params
        params.permit(:schedule_id, :relaxation_category_id, :schedule_activity)
    end

end
