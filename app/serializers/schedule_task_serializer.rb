class ScheduleTaskSerializer < ActiveModel::Serializer
  attributes :id, :schedule_id, :task_id

  def initialize(schedule_task_object)
    @schedule_task = schedule_task_object
  end
 
  def to_serialized_json
      options = {
        except: [:updated_at, :created_at]
      }
      @schedule_task.to_json(options)
  end
  
end
