class UserRelaxationCategorySerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :relaxation_category_id
end
