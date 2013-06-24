json.array!(@teams) do |team|
  json.extract! team, :name, :email, :system_id
  json.url team_url(team, format: :json)
end
