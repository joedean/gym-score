json.array!(@meets) do |meet|
  json.extract! meet, :id, :name, :venue, :address, :city, :state, :zip, :event_date
  json.url meet_url(meet, format: :json)
end
