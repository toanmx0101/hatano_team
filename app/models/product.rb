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
#code : string 

class Product < ApplicationRecord
  belongs_to :category
end
