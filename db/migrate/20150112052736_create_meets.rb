class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.belongs_to :athlete, index: true
      t.belongs_to :tournament, index: true
      t.integer    :place

      t.timestamps null: false
    end
    add_foreign_key :meets, :athletes
    add_foreign_key :meets, :tournaments
  end
end
