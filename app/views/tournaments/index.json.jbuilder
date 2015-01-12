json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :venue, :address, :city, :state, :zip, :event_date
  json.url tournament_url(tournament, format: :json)
end
