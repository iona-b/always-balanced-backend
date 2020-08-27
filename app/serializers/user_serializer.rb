class UserSerializer < ActiveModel::Serializer

  def initialize(user_object)
    @user = user_object
  end
 
  def to_serialized_json
      options = {
          }
      @user.to_json(options)
  end
  
end
