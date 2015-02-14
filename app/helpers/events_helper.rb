module EventsHelper
  def tournament_name
    @event_collection.tournament.name if @event_collection.tournament
  end

  def athlete_name
    @event_collection.athlete.full_name if @event_collection.athlete
  end
end
