class RelaxationCategorySerializer < ActiveModel::Serializer

  def initialize(relaxation_category_object)
    @relaxation_category = relaxation_category_object
  end
 
  def to_serialized_json
      options = {
        except: [:updated_at, :created_at]
      }
      @relaxation_category.to_json(options)
  end

end
