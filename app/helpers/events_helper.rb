module EventsHelper
  def tournament_name
    return unless @event_collection
    @event_collection.meet.tournament.name if @event_collection.meet.tournament
  end

  def athlete_name
    return unless @event_collection
    @event_collection.meet.athlete.full_name if @event_collection.meet.athlete
  end
end
