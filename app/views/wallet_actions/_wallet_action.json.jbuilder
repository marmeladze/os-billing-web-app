json.extract! wallet_action, :id, :wallet_id, :action_type, :amount, :created_at, :updated_at
json.url wallet_action_url(wallet_action, format: :json)
