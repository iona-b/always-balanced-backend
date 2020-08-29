class ScheduleActivitySerializer < ActiveModel::Serializer
  attributes :id, :schedule_id, :activity_id

  def initialize(schedule_activity_object)
    @schedule_activity = schedule_activity_object
  end
 
  def to_serialized_json
      options = {
          }
      @schedule_activity.to_json(options)
  end

end
