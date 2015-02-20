class Event < ActiveRecord::Base
  has_many :athletes_events_meets
  has_many :athletes, through: :athletes_events_meets
  has_many :meets, through: :athletes_events_meets

  validates :name, presence: true

  def self.by_meet(meet)
    eager_load(:meets).where("meets.id = ?", meet.id)
  end

  def self.by_athlete(athlete)
    eager_load(:athletes).where("athletes.id = ?", athlete.id)
  end

  def self.by_athlete_meet(athlete, meet)
    by_meet(meet).by_athlete(athlete).default_order
  end

  def self.default_order
    order :sort_order
  end
end
