class ChangeDecimalToReviews < ActiveRecord::Migration
  def change
    change_column :Reviews, :rate, :float
  end
end
