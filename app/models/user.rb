class User < ApplicationRecord
  belongs_to :role

  has_many :orders

  validates :username, presence: true, uniqueness: true
  validates :rol_id, presence: true
end
