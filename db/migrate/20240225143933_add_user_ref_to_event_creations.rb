class AddUserRefToEventCreations < ActiveRecord::Migration[7.1]
  def change
    add_reference :event_creations, :user, null: false, foreign_key: true
  end
end
