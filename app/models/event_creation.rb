class EventCreation < ApplicationRecord
  belongs_to :created_event, class_name: "Event", foreign_key: "event_id"
  belongs_to :event_creator, class_name: "User", foreign_key: "user_id"
end
