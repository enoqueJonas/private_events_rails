class Event < ApplicationRecord
  scope :future_events, ->(date) { where("date > ?", date)}
  scope :past_events, ->(date) { where("date < ?", date)}
  # Ex:- scope :active, -> {where(:active => true)}
  has_many :event_creations
  has_many :attendances
  has_many :attendees, through: :attendances, source: :attendee
  has_many :creators, through: :event_creations, source: :event_creator
end
