class Event < ActiveRecord::Base
  belongs_to :meet

  TYPES = ["Floor", "PommelHorse", "Rings", "Vault", "ParallelBars", "HighBars"]

  def self.by_tournament(tournament)
    where tournament: tournament
  end

  def self.by_athlete(athlete)
    where athlete: athlete
  end

  def self.by_athlete_tournament(athlete, tournament)
    by_tournament(tournament).by_athlete(athlete)
  end
end
