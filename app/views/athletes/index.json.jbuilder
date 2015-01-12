json.array!(@athletes) do |athlete|
  json.extract! athlete, :id, :tournament_id, :first_name, :last_name, :age_level, :class_level, :birth_date, :start_date
  json.url athlete_url(athlete, format: :json)
end
