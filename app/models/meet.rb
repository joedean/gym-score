class Meet < ActiveRecord::Base
  has_many :athletes_meets
  has_many :athletes, through: :athletes_meets
  has_and_belongs_to_many :events

  DEFAULT_EVENT_TYPES = ["Floor", "PommelHorse", "Rings", "Vault", "ParallelBars", "HighBars"]

end
