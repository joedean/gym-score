module EventsHelper
  def tournament_name
    return unless @event_collection
    @event_collection.tournament.name if @event_collection.tournament
  end

  def athlete_name
    return unless @event_collection
    @event_collection.athlete.full_name if @event_collection.athlete
  end
end
