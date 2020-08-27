class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_description, :task_notes, :user_id
end
