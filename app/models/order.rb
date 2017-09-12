class Order < ApplicationRecord
  belongs_to :guest
  belongs_to :user
  has_many :order_details, dependent: :destroy
  validates_associated :order_details
  validates :status, presence: true, inclusion: {in: %w{pending book trade finish}}
end
