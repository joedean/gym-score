class CreateAthletesTournaments < ActiveRecord::Migration
  def change
    create_table :athletes_tournaments, id: false do |t|
      t.belongs_to :athlete, index: true
      t.belongs_to :tournament, index: true
    end
  end
end
