class RenameMtgDateColumnToBooks < ActiveRecord::Migration
  def change
    rename_column :books, :Mtg_date, :mtg_date
  end
end
