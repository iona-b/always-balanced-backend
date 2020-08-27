class User < ApplicationRecord

    has_many :user_relaxation_categories
    has_many :relaxation_categories, through: :user_relaxation_categories

    has_secure_password

end
