json.extract! wallet, :id, :owner_id, :balance, :created_at, :updated_at
json.url wallet_url(wallet, format: :json)
