class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :link
      t.string :name
      t.date :event_date
      t.time :event_time
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
