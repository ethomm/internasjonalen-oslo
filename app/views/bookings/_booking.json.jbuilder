json.extract! booking, :id, :type, :body, :slug, :created_at, :updated_at
json.url booking_url(booking, format: :json)
