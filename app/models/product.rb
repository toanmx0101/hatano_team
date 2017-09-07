class Product < ApplicationRecord
  belongs_to :category
  validates :product_name, presence: true, uniqueness: {case_sensitive: false}
  validates :category_id, presence: true
  validates :price, presence: true, numericaly: true
end
