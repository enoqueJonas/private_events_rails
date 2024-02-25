class AddEventRefToEventCreations < ActiveRecord::Migration[7.1]
  def change
    add_reference :event_creations, :event, null: false, foreign_key: true
  end
end
