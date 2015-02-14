class EventCollection

  attr_accessor :tournament, :athlete, :params

  def initialize(params)
    @params = params
    @tournament = Tournament.find(params[:tournament_id]) if params[:tournament_id].present?
    @athlete = Athlete.find(params[:athlete_id]) if params[:athlete_id].present?
  end

  def events
    if tournament
      results = Event.tournament_events(tournament)
    end

    if athlete
      if results
        results.athlete_events(athlete)
      else
        results = Event.athlete_events(athlete)
      end
    end

    if results.nil?
      results = Event.all
    end

    results
  end
end
