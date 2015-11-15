json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :image_id, :destination, :seats
  json.url post_url(post, format: :json)
end
