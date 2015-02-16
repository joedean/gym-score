class EventCollection

  attr_accessor :athlete, :meet, :params

  def initialize(params)
    @params = params
    @athlete = Athlete.find(params[:athlete_id]) if params[:athlete_id].present?
    @meet = Meet.find(params[:meet_id]) if params[:meet_id].present?
  end

  def athletes_events_meets
    [] unless athlete && meet
    if events.empty?
      create_default_events
    end
    AthletesEventsMeet.by_athlete_meet(athlete, meet)
  end

  def events
    if athlete && meet
      Event.by_athlete_meet(athlete, meet)
    elsif athlete
      Event.by_athlete(athlete)
    elsif meet
      Event.by_meet(meeet)
    else
      Event.all
    end
  end

  def overall_score
    athletes_events_meets.map(&:score).inject(:+)
  end

  def overall_place
    #meet.place
    1
  end



  private
    def create_default_events
      Meet::DEFAULT_EVENT_TYPES.each { |event_type|
        event = Event.where(type: event_type).first_or_create
        AthletesEventsMeet.create( { athlete: athlete,
                                     event: event,
                                     meet: meet } )
      }
    end
  # end private
end
