json.array!(@events) do |event|
  json.extract! event, :id, :name, :start_value
  json.url event_url(event, format: :json)
end
