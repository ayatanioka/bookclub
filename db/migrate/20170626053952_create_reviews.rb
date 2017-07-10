class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string  :nickname
      t.integer  :book_id
      t.integer  :rate
      t.text     :review
      t.timestamps
    end
  end
end
