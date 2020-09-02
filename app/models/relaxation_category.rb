class RelaxationCategory < ApplicationRecord

    has_many :user_relaxation_categories
    has_many :users, through: :user_relaxation_categories
    has_many :activities
    has_many :schedule_activities, through: :activities

    validates :category_name, presence: true

end
