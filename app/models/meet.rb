class Meet < ActiveRecord::Base
  has_many :athletes_meets
  has_many :athletes, through: :athletes_meets
  has_many :athletes_events_meets
  has_many :events, through: :athletes_events_meets

  after_save :initialize_events

  DEFAULT_EVENT_NAMES = ["Floor", "Pommel Horse", "Rings", "Vault", "Parallel Bars", "High Bars"]

  def self.default_order
    order :meet_date
  end

  private

  def initialize_events
    events = Event.where("name in (?)", DEFAULT_EVENT_NAMES)
    athletes.each do |athlete|
      events.each do |event|
        AthletesEventsMeet.where( { athlete_id: athlete.id,
                                     event_id: event.id,
                                     meet_id: id } ).first_or_create
      end
    end
  end
end
