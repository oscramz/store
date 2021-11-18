class CartProduct < ApplicationRecord
  after_save :cart_products

  belongs_to :cart
  belongs_to :product

  validates :cart_id, presence: true
  validates :product_id, presence: true
  validates :quantity, presence: true, numericality: true

  private
  def calculate_total
    total = 0
    self.cart.cart_products.each do |cp|
      total += cp.quantity * cp.product.price
    end
    self.cart.total = total
    self.cart.save
  end
end
