json.array!(@jobs) do |job|
  json.extract! job, :name, :job_type_id, :box_name_id, :owner, :command, :machine_id, :permission, :date_condition, :days_of_week, :start_times, :condition, :short_description, :str_out_file, :str_err_file, :alarm_if_fail, :avg_runtime_min, :avg_runtime_sec, :max_runtime_min, :system_id, :description, :priority_id, :critical, :actions, :notes, :submited_by_id, :integer, :created_on, :modified_by_id, :integer, :last_modified_on, :update_log, :job_status_id
  json.url job_url(job, format: :json)
end
