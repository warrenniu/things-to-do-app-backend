class User < ApplicationRecord
    has_many :tasks 
    validates :username, uniqueness: {case_sensitive: false}
    validates :username, :first_name, :last_name, presence: true
end
