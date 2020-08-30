class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id

  belongs_to :user

  def initialize(schedule_object)
    @schedule = schedule_object
  end

  has_many :schedule_activities
  has_many :activities, through: :schedule_activities
  has_many :schedule_tasks
  has_many :tasks, through: :schedule_tasks
 
  def to_serialized_json
      options = {
        include: {
          schedule_activities: {
            except: [:updated_at, :created_at]
          },
          activities: {
            except: [:updated_at, :created_at]
          },
          schedule_tasks: {
            except: [:updated_at, :created_at]
          },
          tasks: {
            except: [:updated_at, :created_at]
          },
        },
        except: [:updated_at, :created_at]
      }
      @schedule.to_json(options)
  end

end
