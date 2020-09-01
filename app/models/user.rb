class User < ApplicationRecord

    has_many :user_relaxation_categories
    has_many :relaxation_categories, through: :user_relaxation_categories
    has_many :tasks
    has_many :schedule_tasks, through: :tasks
    has_many :schedules
    has_many :schedule_activities, through: :schedules
    has_many :schedule_tasks, through: :schedules

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password, presence: true
    validates :start_work_time, presence: true
    validates :min_num_hours, presence: true
    validates :max_num_hours, presence: true

    has_secure_password

end
