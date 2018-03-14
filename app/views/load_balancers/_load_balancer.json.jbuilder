json.extract! load_balancer, :id, :name, :operating_status, :provisioning_status, :provider, :vip_address, :tenant_uid, :created_at, :updated_at
json.url load_balancer_url(load_balancer, format: :json)
