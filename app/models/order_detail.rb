class OrderDetail < ApplicationRecord
  belongs_to :order
  # validates :order, absense: true
  validates :order_id, presence: true, uniqueness: {case_sensitive: false}
  validates :price, presence: true
  validates :quantity, presence: true, numericaly: true
end
