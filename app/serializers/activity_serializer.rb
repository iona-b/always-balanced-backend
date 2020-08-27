class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :activity_description, :relaxation_category_id
end
