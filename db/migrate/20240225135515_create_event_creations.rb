class CreateEventCreations < ActiveRecord::Migration[7.1]
  def change
    create_table :event_creations do |t|

      t.timestamps
    end
  end
end
