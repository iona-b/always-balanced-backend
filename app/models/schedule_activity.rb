class ScheduleActivity < ApplicationRecord

    belongs_to :activity
    belongs_to :schedule

    validates :schedule_id, presence: true
    validates :activity_id, presence: true

end
