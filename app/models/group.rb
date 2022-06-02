class Group < ApplicationRecord
    has_many :breeds, dependent: :destroy
end
