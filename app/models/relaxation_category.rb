class RelaxationCategory < ApplicationRecord

    has_many :user_relaxation_categories
    has_many :users, through: :user_relaxation_categories
    has_many :activities

end
