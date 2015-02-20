class AthletesEventsMeet < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :event
  belongs_to :meet

  def self.by_athlete_meet(athlete, meet)
    where(athlete: athlete, meet: meet).eager_load(:event).event_sort_order
  end

  def self.by_athlete_event(athlete, event)
    where(athlete: athlete, event: event).eager_load(:meet).meet_date_order
  end

  def self.event_sort_order
    order 'events.sort_order asc'
  end

  def self.meet_date_order
    order 'meets.meet_date asc'
  end
end
