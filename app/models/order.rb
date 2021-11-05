class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :status

  has_many :order_details
  has_many :products, through: :order_details

  validates :number, presence: true, numericality: true, uniqueness: true
  validates :total, presence: true
  validates :tatus_id, presence: true
end
