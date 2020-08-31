class ActivitySerializer < ActiveModel::Serializer

  def initialize(activity_object)
    @activity = activity_object
  end
 
  def to_serialized_json
      options = {
        except: [:updated_at, :created_at]
      }
      @activity.to_json(options)
  end

end
