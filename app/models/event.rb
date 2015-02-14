class Event < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :athlete

  TYPES = ["Floor", "PommelHorse", "Rings", "Vault", "ParallelBars", "HighBars"]

  def self.tournament_events(tournament)
    where tournament: tournament
  end

  def self.athlete_events(athlete)
    where athlete: athlete
  end
end
