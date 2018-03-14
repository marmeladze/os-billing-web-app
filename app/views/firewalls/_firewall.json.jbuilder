json.extract! firewall, :id, :tenant_uid, :status, :routers, :name, :created_at, :updated_at
json.url firewall_url(firewall, format: :json)
