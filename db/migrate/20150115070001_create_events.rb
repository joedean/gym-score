class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :meet
      t.string :type
      t.decimal :score, precision: 8, scale: 1, default: 0.0, null: false
      t.integer :place

      t.timestamps null: false
    end
    add_foreign_key :events, :meets
  end
end
