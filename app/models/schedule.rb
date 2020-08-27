class Schedule < ApplicationRecord

    has_many :schedule_activities
    has_many :activities, through: :schedule_activities
    has_many :schedule_tasks
    has_many :tasks, through: :schedule_tasks
    belongs_to :user

end
