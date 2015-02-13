module AthletesHelper
  def tournament_name
    @athlete_collection.tournament.name if @athlete_collection.tournament
  end
end
