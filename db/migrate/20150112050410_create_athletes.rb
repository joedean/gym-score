class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.string :first_name
      t.string :last_name
      t.string :age_level
      t.integer :class_level
      t.date :birth_date
      t.date :start_date

      t.timestamps null: false
    end
  end
end
