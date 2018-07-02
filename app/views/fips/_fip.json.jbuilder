json.extract! fip, :id, :status, :tenant_uid, :fixed_ip, :floating_ip, :creation
json.url fip_url(fip, format: :json)
