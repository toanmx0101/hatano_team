class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
