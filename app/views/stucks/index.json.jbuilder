json.array!(@stucks) do |stuck|
  json.extract! stuck, :id, :description
  json.url stuck_url(stuck, format: :json)
end
