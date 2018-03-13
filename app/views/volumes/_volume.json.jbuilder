json.extract! volume, :id, :type, :amount, :available, :instance_id, :user_id, :created_at, :updated_at
json.url volume_url(volume, format: :json)
