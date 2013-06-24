json.array!(@employees) do |employee|
  json.extract! employee, :name, :first_name, :last_name, :email, :team_id
  json.url employee_url(employee, format: :json)
end
