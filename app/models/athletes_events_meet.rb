class AthletesEventsMeet < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :event
  belongs_to :meet

  def self.by_athlete_meet(athlete, meet)
    where athlete: athlete, meet: meet
  end

  def self.by_athlete_event(athlete, event)
    where athlete: athlete, event: event
  end
end
