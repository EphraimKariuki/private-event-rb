class RemoveEventIdFromEventAttendances < ActiveRecord::Migration[8.0]
  def change
    remove_column :event_attendances, :event_id, :bigint
  end
end
