class Order < ApplicationRecord
  belongs_to :guest
  belongs_to :user
  has_many :order_details
end
