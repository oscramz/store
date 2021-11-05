class Status < ApplicationRecord
    has_many :orders

    validates :descrption, presence: true, uniqueness: true
end
