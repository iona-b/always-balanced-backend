class RelaxationCategorySerializer < ActiveModel::Serializer

  def initialize(relaxation_category_object)
    @relaxation_category = relaxation_category_object
  end
 
  def to_serialized_json
      options = {
          }
      @relaxation_category.to_json(options)
  end

end
