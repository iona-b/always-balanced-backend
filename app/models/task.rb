class Task < ApplicationRecord

    has_many :schedule_tasks
    has_many :schedules, through: :schedule_tasks
    belongs_to :user

    validates :task_description, presence: true
    validates :task_notes, presence: true
    validates :user_id, presence: true

end
