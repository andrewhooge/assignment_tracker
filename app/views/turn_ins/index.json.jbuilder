json.array!(@turn_ins) do |turn_in|
  json.extract! turn_in, :id, :user_id, :assignment_id, :url, :completed
  json.url turn_in_url(turn_in, format: :json)
end
