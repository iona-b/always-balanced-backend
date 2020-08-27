class ActivitySerializer < ActiveModel::Serializer

  def initialize(activity_object)
    @activity = activity_object
  end
 
  def to_serialized_json
      options = {
          }
      @activity.to_json(options)
  end

end
