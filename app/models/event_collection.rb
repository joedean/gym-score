class EventCollection

  attr_accessor :tournament, :athlete, :params

  def initialize(params)
    @params = params
    @tournament = Tournament.find(params[:tournament_id]) if params[:tournament_id].present?
    @athlete = Athlete.find(params[:athlete_id]) if params[:athlete_id].present?
  end

  def events
    if tournament && athlete
      #tournament.athlete
    end
  end


end
