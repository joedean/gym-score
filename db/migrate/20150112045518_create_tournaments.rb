class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.date :event_date

      t.timestamps null: false
    end
  end
end
