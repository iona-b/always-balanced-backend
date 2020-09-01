class Activity < ApplicationRecord

    belongs_to :relaxation_category
    has_many :schedule_activities
    has_many :schedules, through: :schedule_activities

    validates :activity_description, presence: true
    validates :relaxation_category_id, presence: true

end
