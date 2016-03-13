json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :phone, :address
  json.url user_url(user, format: :json)
end
