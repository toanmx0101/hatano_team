#== Schema Infomation
#
#Table Name: categorys
#
#category_name: string
#created_at: datetime
#updated_at: datetime

class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :category_name, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}
end
