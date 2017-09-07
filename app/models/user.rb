class User < ApplicationRecord
  has_many :feedbacks
  has_many :orders
  validates_associated :feedbacks
  validates_associated :orders
  validates :name, presence: true
  validates :birth_day, presence: true
  validates :sex, presence: true
  validates :address, presence: true
  validates :role, presence: true
end
