class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :start_work_time, :min_num_hours, :max_num_hours, :relaxation_category_1, :relaxation_category_2, :relaxation_category_3
end
