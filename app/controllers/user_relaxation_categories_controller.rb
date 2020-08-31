class UserRelaxationCategoriesController < ApplicationController

    def show
        user_relaxation_category = UserRelaxationCategory.find_by(id: params[:id])
        render json: UserRelaxationCategorySerializer.new(user_relaxation_category).to_serialized_json
    end

    def index
        user_relaxation_categories = UserRelaxationCategory.all
        render json: UserRelaxationCategorySerializer.new(user_relaxation_categories).to_serialized_json
    end

    def new
        user_relaxation_category = UserRelaxationCategory.new
    end

    def create

        user_relaxation_category = UserRelaxationCategory.create(user_relaxation_category_params)
        render json: UserRelaxationCategorySerializer.new(user_relaxation_category).to_serialized_json
    end

    def user_relaxation_category_params
        params.permit(:user_id, :relaxation_category_id, :user_relaxation_category)
    end

end
