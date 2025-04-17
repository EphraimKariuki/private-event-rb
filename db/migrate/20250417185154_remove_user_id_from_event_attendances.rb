class RemoveUserIdFromEventAttendances < ActiveRecord::Migration[8.0]
  def change
    remove_column :event_attendances, :user_id, :bigint
  end
end
