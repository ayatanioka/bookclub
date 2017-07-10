class ChangeRateToReviews < ActiveRecord::Migration
  def change
    change_column :Reviews, :rate, :decimal
  end
end
