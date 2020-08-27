class ScheduleTaskSerializer < ActiveModel::Serializer
  attributes :id, :schedule_id, :task_id
end
