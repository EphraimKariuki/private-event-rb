class Event < ApplicationRecord
  belongs_to :craator, class_name: 'User'
  has_many :attendees, through: :event_attendances, source: :event_attendee
end
