class RenameGuesseTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :guesses, :guests
  end
end
