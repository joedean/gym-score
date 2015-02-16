class EventCollection

  attr_accessor :meet, :params

  def initialize(params)
    @params = params
    @meet = lookup_meet
  end

  def events
    if meet
      meet.events
    else
      Event.all
    end
  end

  def overall_score
    events.map(&:score).inject(:+)
  end

  def overall_place
    meet.place
  end

  private
  def lookup_meet
    if params[:tournament_id].present? && params[:athlete_id].present?
      Meet.by_athlete_tournament(params[:tournament_id],
                                 params[:athlete_id])
    end
  end
end
