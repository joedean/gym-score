class ChangeScoreScaleOnAthletesEventsMeets < ActiveRecord::Migration
  def change
    change_column :athletes_events_meets, :score, :decimal, precision: 6, scale: 4
  end
end
