class TaskSerializer < ActiveModel::Serializer
  attributes :id, :task_description, :task_notes, :user_id

  belongs_to :user

  def initialize(task_object)
    @task = task_object
  end
 
  def to_serialized_json
      options = {
      }
      @task.to_json(options)
  end

end
