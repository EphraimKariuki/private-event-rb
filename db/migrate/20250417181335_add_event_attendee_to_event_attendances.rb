class AddEventAttendeeToEventAttendances < ActiveRecord::Migration[8.0]
  def change
    add_reference :event_attendances, :event_attendee, null: false, foreign_key: { to_table: :users }, index: true
  end
end
