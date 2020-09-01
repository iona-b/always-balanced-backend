class UserSerializer < ActiveModel::Serializer

  def initialize(user_object)
    @user = user_object
  end
 
  def to_serialized_json
      options = {
        include: {
          user_relaxation_categories: {
            except: [:updated_at, :created_at]
          },
          relaxation_categories: {
            except: [:updated_at, :created_at]
          },
          tasks: {
            except: [:updated_at, :created_at]
          },
          schedule_tasks: {
            except: [:updated_at, :created_at]
          },
          schedules: {
            except: [:updated_at, :created_at]
          },
          schedule_activities: {
            except: [:updated_at, :created_at]
          },
        },
        except: [:password_digest, :updated_at, :created_at]
      }
      @user.to_json(options)
  end
  
end
