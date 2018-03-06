json.extract! cpu_load, :id, :instance_id, :percentage, :observed_at, :created_at, :updated_at
json.url cpu_load_url(cpu_load, format: :json)
