json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :photo, :role
  json.url user_url(user, format: :json)
end
