class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id

  belongs_to :user

  def initialize(schedule_object)
    @schedule = schedule_object
  end
 
  def to_serialized_json
      options = {
      }
      @schedule.to_json(options)
  end

end
