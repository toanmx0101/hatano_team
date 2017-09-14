class Order < ApplicationRecord
  belongs_to :guest
  belongs_to :user
  has_many :order_details, dependent: :destroy
  validates_associated :order_details
  validates :status, presence: true, inclusion: {in: %w{pending book trade finish}}

  #== schema infomation
  #
  #Table name: orders
  #
  #user_id: integer
  #guest_id: integer
  #status: string
  #total_price: float
  #date_order: datetime
  #create_at: datetime
  #update-at: datetime
end
