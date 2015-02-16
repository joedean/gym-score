class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :name
      t.string :venue
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.date :meet_date

      t.timestamps null: false
    end
  end
end
