json.extract! report, :id, :report_type_id, :submitdate, :filer_id, :filename, :origin, :campaignyear, :ontime, :signature, :created_at, :updated_at
json.url report_url(report, format: :json)