json.array!(@events) do |event|
  json.extract! event, :id, :meet_id, :type, :score, :place
  json.url event_url(event, format: :json)
end
