json.extract! transaction, :id, :type, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)