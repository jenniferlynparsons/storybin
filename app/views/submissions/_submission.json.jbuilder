json.extract! submission, :id, :cover_letter, :active, :simultaneous, :reprint, :reprint_date, :status, :created_at, :updated_at
json.url submission_url(submission, format: :json)
