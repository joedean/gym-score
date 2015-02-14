module AthletesHelper
  def tournament_name
    return unless @athlete_collection
    @athlete_collection.tournament.name if @athlete_collection.tournament
  end

  def events_path(athlete=nil)
    if @athlete_collection && @athlete_collection.tournament
      tournament_athlete_events_path(@athlete_collection.tournament, athlete)
    elsif athlete
      athlete_events_path(athlete)
    end
  end
end
