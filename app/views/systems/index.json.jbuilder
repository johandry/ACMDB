json.array!(@systems) do |system|
  json.extract! system, :name, :description
  json.url system_url(system, format: :json)
end
