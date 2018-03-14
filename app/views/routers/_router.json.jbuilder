json.extract! router, :id, :name, :status, :address, :tenant_uid, :creation, :created_at, :updated_at
json.url router_url(router, format: :json)
