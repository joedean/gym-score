module EventsHelper
  def meet_name
    return unless @event_collection
    @event_collection.meet.name if @event_collection.meet
  end

  def athlete_name
    return unless @event_collection
    @event_collection.athlete.full_name if @event_collection.athlete
  end
end
