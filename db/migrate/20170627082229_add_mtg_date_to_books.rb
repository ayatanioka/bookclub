class AddMtgDateToBooks < ActiveRecord::Migration
  def change
    add_column :books, :Mtg_date, :integer
  end
end
