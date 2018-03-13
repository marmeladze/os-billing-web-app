json.extract! ip_list, :id, :address, :type, :instance_id, :created_at, :updated_at
json.url ip_list_url(ip_list, format: :json)
