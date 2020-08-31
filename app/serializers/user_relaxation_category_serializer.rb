class UserRelaxationCategorySerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :relaxation_category_id

  belongs_to :user

  def initialize(user_relaxation_category_object)
    @user_relaxation_category = user_relaxation_category_object
  end
 
  def to_serialized_json
      options = {
        except: [:updated_at, :created_at]
      }
      @user_relaxation_category.to_json(options)
  end
  
end
