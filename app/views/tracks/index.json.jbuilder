json.array!(@tracks) do |track|
  json.extract! track, :id, :title, :user_id, :tag_id, :track_image
  json.url track_url(track, format: :json)
end
