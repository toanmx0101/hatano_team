class Category < ApplicationRecord
  has_many :products
  validates_associated :products
  validates :category_name, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}
end
