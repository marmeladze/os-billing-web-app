json.extract! volume, :id, :volume_type, :amount, :available, :instance_uid, :owner_uid, :created_at, :updated_at
json.url volume_url(volume, format: :json)
