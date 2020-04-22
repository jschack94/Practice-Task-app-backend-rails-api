class User < ApplicationRecord
    has_many :notes
    has_many :tags, through: :notes
    has_secure_password
    validates_uniqueness_of :username
    validates_length_of :username, :minimum => 4
end