class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :birth_day, :date
    add_column :users, :sex, :boolean
    add_column :users, :address, :string
    add_column :users, :role, :boolean
    add_column :users, :phone, :float
  end
end
