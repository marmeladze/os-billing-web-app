json.extract! instance_bill, :id, :name, :total_vcpu, :total_ram, :total_vdisk, :total_cost, :enabled, :created_at, :updated_at
json.url instance_bill_url(instance_bill, format: :json)
