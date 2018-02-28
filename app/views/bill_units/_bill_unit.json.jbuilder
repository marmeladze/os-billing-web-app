json.extract! bill_unit, :id, :vcpu, :ram, :vdisk, :date, :enabled, :created_at, :updated_at
json.url bill_unit_url(bill_unit, format: :json)
