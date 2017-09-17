#==schema infomation
#
##table name: order_details
#
#order_id: integer
#product_id: integer
#quantity: integer
#price: float
#creat_at: datetime
#update_at: datetime

class OrderDetail < ApplicationRecord
  belongs_to :order
  # validates :order, absense: true
  validates :order_id, presence: true, uniqueness: {case_sensitive: false}
  validates :price, presence: true
  validates :quantity, presence: true, numericaly: true
end
