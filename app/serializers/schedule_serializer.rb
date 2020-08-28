class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id

  belongs_to :user
end
