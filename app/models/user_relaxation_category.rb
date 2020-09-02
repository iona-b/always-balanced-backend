class UserRelaxationCategory < ApplicationRecord

    belongs_to :user
    belongs_to :relaxation_category

    validates :user_id, presence: true
    validates :relaxation_category_id, presence: true

end
