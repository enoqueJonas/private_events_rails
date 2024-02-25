class Event < ApplicationRecord
  has_many :event_creations
  has_many :attendances
  has_many :attendees, through: :attendances, source: :attendee
  has_many :creators, through: :event_creations, source: :event_creator
end
