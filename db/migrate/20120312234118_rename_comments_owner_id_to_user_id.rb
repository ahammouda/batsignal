class RenameCommentsOwnerIdToUserId < ActiveRecord::Migration
  def up
    rename_column :comments, :owner_id, :user_id
  end

  def down
    rename_column :comments, :user_id, :owner_id
  end
end
