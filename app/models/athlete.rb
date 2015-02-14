class Athlete < ActiveRecord::Base
  has_and_belongs_to_many :tournaments
  has_many :events

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
  end
end
