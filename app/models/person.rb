class Person < ApplicationRecord
    validates :name, presence: true, uniqueness: true, allow_blank: false
end
