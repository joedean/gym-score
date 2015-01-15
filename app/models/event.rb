class Event < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :athlete

  def self.list(params)
    if params[:tournament_id] && params[:athlete_id]
      where(tournament_id: params[:tournament_id].to_i,
            athlete_id: params[:athlete_id].to_i)
    end
  end
end
