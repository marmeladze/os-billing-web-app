json.extract! fip, :id, :status, :tenant_uid, :fixed_ip, :floating_ip, :creation, :created_at, :updated_at
json.url fip_url(fip, format: :json)
