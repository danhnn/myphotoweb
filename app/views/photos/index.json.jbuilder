json.array!(@photos) do |photo|
  json.extract! photo, :id, :username, :caption, :created_at, :likes_count, :url
  json.url photo_url(photo, format: :json)
end
