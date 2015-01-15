json.array!(@events) do |event|
  json.extract! event, :id, :tournament_id, :athlete_id, :name, :score, :place
  json.url event_url(event, format: :json)
end
