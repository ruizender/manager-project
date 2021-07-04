json.extract! concert, :id, :name, :date, :crowd, :group_id, :created_at, :updated_at
json.url concert_url(concert, format: :json)
