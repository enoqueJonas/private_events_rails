class Event < ApplicationRecord
  has_many :event_creations
  has_many :creators, through: :event_creations, source: :event_creator
end
