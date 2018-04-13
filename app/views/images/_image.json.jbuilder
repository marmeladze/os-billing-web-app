json.extract! image, :id, :uid, :name, :status, :price, :created_at, :updated_at
json.url image_url(image, format: :json)
