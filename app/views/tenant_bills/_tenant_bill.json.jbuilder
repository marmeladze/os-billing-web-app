json.extract! tenant_bill, :id, :tenant_id, :total_vcpu, :total_ram, :total_vdisk, :bill_month, :totoal_usage, :status, :enabled, :created_at, :updated_at
json.url tenant_bill_url(tenant_bill, format: :json)
