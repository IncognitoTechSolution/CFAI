json.extract! coversheet, :id, :report_id, :treasurer_id, :periodbegin, :periodend, :electiondate, :election_type_id, :office_held_id, :office_sought_id, :created_at, :updated_at
json.url coversheet_url(coversheet, format: :json)