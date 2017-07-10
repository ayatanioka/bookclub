class AddMtgPlaceToBooks < ActiveRecord::Migration
  def change
    add_column :books, :mtg_place, :string
  end
end
