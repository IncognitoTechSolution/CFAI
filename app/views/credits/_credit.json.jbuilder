json.extract! credit, :id, :report_id, :transaction_id, :entity_id, :date, :amount, :description, :return, :returntotal, :created_at, :updated_at
json.url credit_url(credit, format: :json)