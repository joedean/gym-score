class Athlete < ActiveRecord::Base
  has_many :athletes_meets
  has_many :meets, through: :athletes_meets
  has_many :athletes_events_meets
  has_many :events, through: :athletes_events_meets

  def personal_best(event)
    AthletesEventsMeet.by_athlete_event(self, event).map(&:score).max
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    return unless birth_date
    now = Time.now.utc.to_date
    now.year - birth_date.year - ((now.month > birth_date.month || (now.month == birth_date.month && now.day >= birth_date.day)) ? 0 : 1)
  end
end
