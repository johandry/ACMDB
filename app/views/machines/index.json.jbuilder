json.array!(@machines) do |machine|
  json.extract! machine, :name, :server_name, :machine_status_id, :ip, :os_id, :environment_id, :hosting_id, :backup_server, :description, :comments
  json.url machine_url(machine, format: :json)
end
