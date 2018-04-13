json.extract! flavor, :id, :os_id, :name, :ram, :disk, :vcpus, :is_public, :enabled, :price, :created_at, :updated_at
json.url flavor_url(flavor, format: :json)
