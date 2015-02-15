class Meet < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :athlete

  has_many :events

  def self.by_athlete_tournament(tournament_id, athlete_id)
    where(tournament_id: tournament_id, athlete_id: athlete_id).first
  end

  def add_events
    Event::TYPES.each do |event_type|
      next if events.map(&:type).include? event_type
      Event.create( { type: event_type,
                      meet_id: self.id } )
    end
  end
end
