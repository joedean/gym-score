class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.decimal :start_value, precision: 8, scale: 1

      t.timestamps null: false
    end
  end
end
