class Athlete < ActiveRecord::Base
  has_and_belongs_to_many :tournaments
  has_many :events

  accepts_nested_attributes_for :events

  def full_name
    "#{first_name} #{last_name}"
  end

  def age
    now = Time.now.utc.to_date
    now.year - birth_date.year - ((now.month > birth_date.month || (now.month == birth_date.month && now.day >= birth_date.day)) ? 0 : 1)
  end
end
