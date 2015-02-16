class CreateAthletesMeets < ActiveRecord::Migration
  def change
    create_table :athletes_meets do |t|
      t.belongs_to :athlete,    index: true
      t.belongs_to :meet,       index: true
      t.integer    :place

      t.timestamps null: false
    end
    add_foreign_key :athletes_meets, :athletes
    add_foreign_key :athletes_meets, :meets
  end
end
