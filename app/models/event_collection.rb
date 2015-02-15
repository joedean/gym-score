class EventCollection

  attr_accessor :meet, :params

  def initialize(params)
    @params = params
    @meet = Meet.by_athlete_tournament(params[:tournament_id], params[:athlete_id])
  end

  def events
    meet.events
  end

  def overall_score
    return 0 if events.map(&:score).reject(&:nil?).empty?
    events.map(&:score).inject(:+)
  end

  def overall_place
    meet.place
  end
end
