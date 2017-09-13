class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates_associated :products
  validates :category_name, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}

  #== Schema Infomation
  #
  #Table Name: categorys
  #
  #category_name: string
  #created_at: datetime
  #updated_at: datetime
end
