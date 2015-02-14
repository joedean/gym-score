class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :athletes

  after_save :init_tournament_events

  private
  def init_tournament_events
    athletes.each { |athlete|
      athlete.add_events(id)
    }
  end
end
