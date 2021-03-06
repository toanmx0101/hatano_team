#== schema infomation
#
#table name: product_images
#
#product_id: integer
#image_url: string
#color: string

class ProductImage < ApplicationRecord
  belongs_to :product
  validates :image_url, presence: true
end
