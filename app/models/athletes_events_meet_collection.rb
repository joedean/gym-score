class AthletesEventsMeetCollection

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
    athletes_events_meets.map(&:score).sum
  end

  def personal_best_overall_score
    overall_scores = []
    athlete.meets.each do |meet|
      athletes_events_meets = AthletesEventsMeet.by_athlete_meet(athlete, meet)
      overall_scores << athletes_events_meets.map(&:score).inject(:+)
    end
    overall_scores.max
  end

  def athletes_meet
    AthletesMeet.where(athlete: athlete, meet: meet).first
  end

  def meets(event, name, athlete)
    AthletesEventsMeet.where(athlete: athlete, event: event, meet: Meet.where(name: name))
  end

  def meet_names
    AthletesEventsMeet.where(athlete: athlete).map(&:meet).map(&:name).uniq
  end

end
