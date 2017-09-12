class Guest < ApplicationRecord
  has_many :feedbacks
  has_many :orders
end
