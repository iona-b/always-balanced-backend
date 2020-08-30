class ScheduleActivitiesController < ApplicationController

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
        possible_activities = Activity.all.filter do |activity|
            activity.relaxation_category.id === params[:relaxation_category_id]
        end
        schedule_activity = ScheduleActivity.create(schedule_id: schedule_activity_params[:schedule_id], activity_id: possible_activities.sample.id)
        render json: ScheduleActivitySerializer.new(schedule_activity).to_serialized_json
    end

    def schedule_activity_params
        params.permit(:schedule_id, :relaxation_category_id, :schedule_activity)
    end

end
