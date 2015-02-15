class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :meet
      t.string :type
      t.float :score
      t.integer :place

      t.timestamps null: false
    end
    add_foreign_key :events, :meets
  end
end
