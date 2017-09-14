class Product < ApplicationRecord
  belongs_to :category
  validates :product_name, presence: true, uniqueness: {case_sensitive: false}
  validates :category_id, presence: true
  validates :price, presence: true, numericaly: true

  #==schema infomation
  #
  #table name: products
  #
  #category_id: string
  #describe: string
  #price: float
  #product_name: string
  #create_at: datetime
  #update_at: datetime
end
