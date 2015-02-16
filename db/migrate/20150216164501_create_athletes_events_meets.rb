class CreateAthletesEventsMeets < ActiveRecord::Migration
  def change
    create_table :athletes_events_meets do |t|
      t.belongs_to :athlete, index: true
      t.belongs_to :event,   index: true
      t.belongs_to :meet,   index: true
      t.decimal    :score,   precision: 8, scale: 1, default: 0.0, null: false
      t.integer    :place

      t.timestamps null: false
    end
    add_foreign_key :athletes_events_meets, :athletes
    add_foreign_key :athletes_events_meets, :events
    add_foreign_key :athletes_events_meets, :meets
  end
end
