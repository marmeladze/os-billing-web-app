json.extract! fip, :id, :status, :tenant_uid, :fixed_ip, :floating_ip, :creation, :price
json.url fip_url(fip, format: :json)
