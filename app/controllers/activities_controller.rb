class ActivitiesController < ApplicationController

    def show
        activity = Activity.find_by(id: params[:id])
        render json: ActivitySerializer.new(activity).to_serialized_json
    end

    def index
        activities = Activity.all
        render json: ActivitySerializer.new(activities).to_serialized_json
    end

end
