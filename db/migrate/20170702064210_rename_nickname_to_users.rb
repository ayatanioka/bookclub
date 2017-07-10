class RenameNicknameToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :nickname, :name
  end
end
