class Tournament < ActiveRecord::Base
  has_many :meets
  has_many :athletes, through: :meets

  after_save :init_events

  def init_events
    meets.each { |meet| meet.add_events }
  end
end
