class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :tournament, index: true
      t.references :athlete, index: true
      t.string :name
      t.float :score
      t.integer :place

      t.timestamps null: false
    end
    add_foreign_key :events, :tournaments
    add_foreign_key :events, :athletes
  end
end
