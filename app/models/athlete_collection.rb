class AthleteCollection

  attr_accessor :tournament, :params

  def initialize(params)
    @params = params
    @tournament = Tournament.find(params[:tournament_id]) if params[:tournament_id]
  end

  def athletes
    if tournament
      tournament.athletes
    else
      Athlete.all
    end
  end
end
