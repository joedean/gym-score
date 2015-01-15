class Athlete < ActiveRecord::Base
  has_and_belongs_to_many :tournaments
  has_many :events

  def self.list(params)
    if params[:tournament_id]
      eager_load(:tournaments).where("tournaments.id = ?", params[:tournament_id].to_i)
    else
      all
    end
  end
end
