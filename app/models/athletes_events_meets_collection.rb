class AthletesEventsMeetsCollection

  attr_accessor :meet, :athlete, :event, :params

  def initialize(params)
    @params = params
    @meet = Meet.find(params[:meet_id]) if params[:meet_id].present?
    @athlete = Athlete.find(params[:athlete_id]) if params[:athlete_id].present?
    @event = Event.find(params[:event_id]) if params[:event_id].present?
  end

  def athletes_events_meets
    if meet && athlete
      AthletesEventsMeet.by_athlete_meet(athlete, meet)
    elsif athlete && event
      AthletesEventsMeet.by_athlete_event(athlete, event)
    else
      AthletesEventsMeet.all
    end
  end

  def overall_score
    53.0
  end

  def overall_place
    1
  end
end
