class AthleteBuilder
  attr_reader :tournament, :params

  def initialize(tournament, params = {})
    tournament.athletes.build(params).tap do |athlete|
      #athlete.events.build(params[:event])
      #athlete.events << EventBuilder.new(athlete, params[:event])
    end
end
