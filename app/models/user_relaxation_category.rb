class UserRelaxationCategory < ApplicationRecord

    belongs_to :user
    belongs_to :relaxation_category
end
