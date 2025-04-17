class AddAttendedEventToEventAttendances < ActiveRecord::Migration[8.0]
  def change
    add_reference :event_attendances, :attended_event, null: false, foreign_key:  { to_table: :events }, index: true
  end
end
