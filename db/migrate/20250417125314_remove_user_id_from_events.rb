class RemoveUserIdFromEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :events, :user_id, :bigint
  end
end
