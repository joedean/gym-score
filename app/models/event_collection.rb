class EventCollection

  attr_accessor :tournament, :athlete, :params

  def initialize(params)
    @params = params
    @tournament = Tournament.find(params[:tournament_id]) if params[:tournament_id].present?
    @athlete = Athlete.find(params[:athlete_id]) if params[:athlete_id].present?
  end

  def events
    if tournament
      results = Event.by_tournament(tournament)
    end

    if athlete
      if results
        results.by_athlete(athlete)
      else
        results = Event.by_athlete(athlete)
      end
    end

    if results.nil?
      results = Event.all
    end

    results
  end
end
