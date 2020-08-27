class Task < ApplicationRecord

    has_many :schedule_tasks
    has_many :schedules, through: :schedule_tasks
    belongs_to :user

end
