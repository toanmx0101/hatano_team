class AddColToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products ,:code, :string
  end
end
