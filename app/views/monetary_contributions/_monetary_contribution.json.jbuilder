json.extract! monetary_contribution, :id, :report_id, :transaction_id, :entity_id, :entity_type_id, :candidate_id, :outofstatepac, :pacid, :date, :amount, :description, :mctotal, :created_at, :updated_at
json.url monetary_contribution_url(monetary_contribution, format: :json)