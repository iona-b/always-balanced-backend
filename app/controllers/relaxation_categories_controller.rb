class RelaxationCategoriesController < ApplicationController
    skip_before_action :authorized

    def show
        relaxation_category = RelaxationCategory.find_by(id: params[:id])
        render json: RelaxationCategorySerializer.new(relaxation_category).to_serialized_json
    end

    def index
        relaxation_categories = RelaxationCategory.all
        render json: RelaxationCategorySerializer.new(relaxation_categories).to_serialized_json
    end

end
