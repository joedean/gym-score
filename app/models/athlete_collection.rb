class AthleteCollection

  attr_accessor :meet, :params

  def initialize(params)
    @params = params
    @meet = Meet.find(params[:meet_id]) if params[:meet_id].present?
  end

  def athletes
    if meet
      meet.athletes.default_order
    else
      Athlete.default_order
    end
  end
end
