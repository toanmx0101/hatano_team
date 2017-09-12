class Guest < ApplicationRecord
  has_many :feedbacks, dependent: :destroy
  has_many :orders, dependent: :destroy
  validates_associated :feedbacks
  validates_associated :orders
  validates :name, presence: true, length: {minimum: 6, maximum: 30}
  validates :address, presence: true
  validates :phone, presence: true, length: {minimum: 9, maximum: 15},
    numericality: true
end
