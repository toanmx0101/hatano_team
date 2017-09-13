class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.string :status
      t.datetime :date_order
      t.references :guest, foreign_key: true

      t.timestamps
    end
  end
end
