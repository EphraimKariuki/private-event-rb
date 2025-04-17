class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendees, through: :event_attendances, source: :event_attendee
end
